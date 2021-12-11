using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ModuleAssessmentRepository : IModuleAssessmentRepository
    {
        readonly IDatabase db;

        public ModuleAssessmentRepository()
        {
            db = Database.Instance;
        }

        public void Add(ModuleAssessment entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.Weight, entity.Weight);
            db.AddParameter(cmd, Params.AssessmentCategoryID, entity.AssessmentCategoryID);

            entity.ModuleAssessmentID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(ModuleAssessment entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ModuleAssessmentID, entity.ModuleAssessmentID);
            db.Execute(cmd);
        }

        public IEnumerable<ModuleAssessment> GetAll()
        {
            List<ModuleAssessment> moduleAssessments = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            moduleAssessments = DBHelper.Convert<List<ModuleAssessment>>(result);

            return moduleAssessments;
        }

        public ModuleAssessment GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ModuleAssessmentID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            ModuleAssessment found = DBHelper.Convert<ModuleAssessment>(result);

            return found;
        }

        public void Update(ModuleAssessment entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ModuleAssessmentID, entity.ModuleAssessmentID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.Weight, entity.Weight);
            db.AddParameter(cmd, Params.AssessmentCategoryID, entity.AssessmentCategoryID);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertModuleAssessment";
            public const string Update = "spUpdateModuleAssessment";
            public const string Delete = "spDeleteModuleAssessment";
            public const string Find = "spFindModuleAssessment";
            public const string GetAll = "spGetAllModuleAssessment";
        }

        private struct Params
        {
            public const string ModuleAssessmentID = "@ModuleAssessmentID";
            public const string Name = "@Name";
            public const string Weight = "@Weight";
            public const string AssessmentCategoryID = "@AssessmentCategoryID";
        }
    }
}
