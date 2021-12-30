using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class AssessmentCategoryRepository : IAssessmentCategoryRepository
    {
        private readonly IDatabase db;

        public AssessmentCategoryRepository()
        {
            db = Database.Instance;
        }

        public void Add(AssessmentCategory entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.Weight, entity.Weight);
            db.AddParameter(cmd, Params.ClassModuleID, entity.ClassModuleID);

            entity.ClassModuleID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(AssessmentCategory entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.AssessmentCategoryID, entity.AssessmentCategoryID);
            db.Execute(cmd);
        }

        public IEnumerable<AssessmentCategory> GetAll()
        {
            List<AssessmentCategory> assessmentCategories = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            assessmentCategories = DBHelper.Convert<List<AssessmentCategory>>(result);

            return assessmentCategories;
        }

        public AssessmentCategory GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.AssessmentCategoryID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            AssessmentCategory found = DBHelper.Convert<AssessmentCategory>(result);

            return found;
        }

        public void Update(AssessmentCategory entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.AssessmentCategoryID, entity.AssessmentCategoryID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.Weight, entity.Weight);
            db.AddParameter(cmd, Params.ClassModuleID, entity.ClassModuleID);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertAssessmentCategory";
            public const string Update = "spUpdateAssessmentCategory";
            public const string Delete = "spDeleteAssessmentCategory";
            public const string Find = "spFindAssessmentCategory";
            public const string GetAll = "spGetAllAssessmentCategory";
        }

        private struct Params
        {
            public const string AssessmentCategoryID = "@AssessmentCategoryID";
            public const string Name = "@Name";
            public const string Weight = "@Weight";
            public const string ClassModuleID = "@ClassModuleID";
        }
    }
}
