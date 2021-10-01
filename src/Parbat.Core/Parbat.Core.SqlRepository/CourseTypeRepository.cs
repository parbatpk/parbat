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
            throw new System.NotImplementedException();
        }

        public void Delete(CourseType entity)
        {
            throw new System.NotImplementedException();
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
            throw new System.NotImplementedException();
        }

        public void Update(CourseType entity)
        {
            throw new System.NotImplementedException();
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
