using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ModuleAssessmentMarkRepository : IModuleAssessmentMarkRepository
    {

        private readonly IDatabase db;

        public ModuleAssessmentMarkRepository()
        {
            db = Database.Instance;
        }

        public void Add(ModuleAssessmentMark entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ObtainMark, entity.ObtainMark);
            db.AddParameter(cmd, Params.RegistrationID, entity.RegistrationID);
            db.AddParameter(cmd, Params.ModuleAssessmentID, entity.ModuleAssessmentID);

            entity.ModuleAssessmentMarkID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(ModuleAssessmentMark entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ModuleAssessmentMarkID, entity.ModuleAssessmentMarkID);
            db.Execute(cmd);
        }

        public IEnumerable<ModuleAssessmentMark> GetAll()
        {
            List<ModuleAssessmentMark> moduleAssessmentMarks = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            moduleAssessmentMarks = DBHelper.Convert<List<ModuleAssessmentMark>>(result);

            return moduleAssessmentMarks;
        }

        public ModuleAssessmentMark GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ModuleAssessmentMarkID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            ModuleAssessmentMark found = DBHelper.Convert<ModuleAssessmentMark>(result);

            return found;
        }

        public void Update(ModuleAssessmentMark entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ModuleAssessmentMarkID, entity.ModuleAssessmentMarkID);
            db.AddParameter(cmd, Params.ObtainMark, entity.ObtainMark);
            db.AddParameter(cmd, Params.RegistrationID, entity.RegistrationID);
            db.AddParameter(cmd, Params.ModuleAssessmentID, entity.ModuleAssessmentID);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertModuleAssessmentMark";
            public const string Update = "spUpdateModuleAssessmentMark";
            public const string Delete = "spDeleteModuleAssessmentMark";
            public const string Find = "spFindModuleAssessmentMark";
            public const string GetAll = "spGetAllModuleAssessmentMark";
        }

        private struct Params
        {
            public const string ModuleAssessmentMarkID = "@ModuleAssessmentMarkID";
            public const string ObtainMark = "@ObtainMark";
            public const string RegistrationID = "@RegistrationID";
            public const string ModuleAssessmentID = "@ModuleAssessmentID";
        }
    }
}
