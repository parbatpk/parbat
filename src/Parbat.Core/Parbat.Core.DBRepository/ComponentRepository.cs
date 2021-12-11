using Parbat.Core.BaseRepository;
using Parbat.Data;
using System;
using System.Collections.Generic;
using Parbat.Core.DataObjects;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ComponentRepository : IComponentRepository
    {
        private readonly IDatabase db;

        public ComponentRepository()
        {
            db = Database.Instance;
        }

        public void Add(Component entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.CurriculumID, entity.CurriculumID);
            db.AddParameter(cmd, Params.TotalCredit, entity.TotalCredit);
            db.AddParameter(cmd, Params.TotalCourses, entity.TotalCourses);
            db.AddParameter(cmd, Params.IsLimitCourses, entity.IsLimitCourses);
            db.AddParameter(cmd, Params.IsLimitCreditHrs, entity.IsLimitCreditHrs);
            db.AddParameter(cmd, Params.ComponentTypeID, entity.ComponentTypeID);

            entity.ComponentID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(Component entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ComponentID, entity.ComponentID);
            db.Execute(cmd);
        }

        public IEnumerable<Component> GetAll()
        {
            List<Component> component = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            component = DBHelper.Convert<List<Component>>(result);

            return component;
        }

        public Component GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ComponentID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Component found = DBHelper.Convert<Component>(result);

            return found;
        }

        public void Update(Component entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.ComponentID, entity.ComponentID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.CurriculumID, entity.CurriculumID);
            db.AddParameter(cmd, Params.TotalCredit, entity.TotalCredit);
            db.AddParameter(cmd, Params.TotalCourses, entity.TotalCourses);
            db.AddParameter(cmd, Params.IsLimitCourses, entity.IsLimitCourses);
            db.AddParameter(cmd, Params.IsLimitCreditHrs, entity.IsLimitCreditHrs);
            db.AddParameter(cmd, Params.ComponentTypeID, entity.ComponentTypeID);

            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertComponent";
            public const string Update = "spUpdateComponent";
            public const string Delete = "spDeleteComponent";
            public const string Find = "spFindComponent";
            public const string GetAll = "spGetAllComponent";
            public const string GetComponentSummary = "spGetComponentSummary";
        }

        private struct Params
        {
            public const string ComponentID = "@ComponentID";
            public const string ShortName = "@ShortName";
            public const string Name = "@Name";
            public const string CurriculumID = "@CurriculumID";
            public const string TotalCredit = "@TotalCredit";
            public const string TotalCourses = "@TotalCourses";
            public const string IsLimitCourses = "@IsLimitCourses";
            public const string IsLimitCreditHrs = "@IsLimitCreditHrs";
            public const string ComponentTypeID = "@ComponentTypeID";
        }
    }
}
