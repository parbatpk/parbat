using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class CourseTypeRepository : ICourseTypeRepository
    {
        private readonly IDatabase db;

        public CourseTypeRepository()
        {
            db = Database.Instance;
        }

        public void Add(CourseType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            
            entity.CourseTypeID = Convert.ToInt64(db.ExecuteScalar(cmd)); 
        }

        public void Delete(CourseType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.CourseTypeID, entity.CourseTypeID);
            db.Execute(cmd);
        }

        public IEnumerable<CourseType> GetAll()
        {
            List<CourseType> coursesType = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            coursesType = DBHelper.Convert<List<CourseType>>(result);

            return coursesType;
        }

        public CourseType GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.CourseTypeID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            CourseType found = DBHelper.Convert<CourseType>(result);

            return found;
        }

        public void Update(CourseType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.CourseTypeID, entity.CourseTypeID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertCourseType";
            public const string Update = "spUpdateCourseType";
            public const string Delete = "spDeleteCourseType";
            public const string Find = "spFindCourseType";
            public const string GetAll = "spGetAllCourseType";
        }

        private struct Params
        {
            public const string CourseTypeID = "@CourseTypeID";
            public const string Name = "@Name";
        }
    }
}
