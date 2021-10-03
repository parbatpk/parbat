using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ComponentCourseRepository : IComponentCourseRepository
    {
        private readonly IDatabase db;

        public ComponentCourseRepository()
        {
            db = Database.Instance;
        }

        public void Add(ComponentCourse entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ComponentID, entity.ComponentID);
            db.AddParameter(cmd, Params.CourseID, entity.CourseID);

            entity.ComponentCourseID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(ComponentCourse entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ComponentCourseID, entity.ComponentCourseID);
            db.Execute(cmd);
        }

        public IEnumerable<ComponentCourse> GetAll()
        {
            List<ComponentCourse> componentCourse = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            componentCourse = DBHelper.Convert<List<ComponentCourse>>(result);

            return componentCourse;
        }

        public ComponentCourse GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ComponentCourseID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            ComponentCourse found = DBHelper.Convert<ComponentCourse>(result);

            return found;
        }

        public void Update(ComponentCourse entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.ComponentCourseID, entity.ComponentCourseID);
            db.AddParameter(cmd, Params.ComponentID, entity.ComponentID);
            db.AddParameter(cmd, Params.CourseID, entity.CourseID);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertComponentCourse";
            public const string Update = "spUpdateComponentCourse";
            public const string Delete = "spDeleteComponentCourse";
            public const string Find = "spFindComponentCourse";
            public const string GetAll = "spGetAllComponentCourse";
        }

        private struct Params
        {
            public const string ComponentCourseID = "@ComponentCourseID";
            public const string ComponentID = "@ComponentID";
            public const string CourseID = "@CourseID";
        }
    }
}
