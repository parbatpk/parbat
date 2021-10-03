using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Parbat.Core.DBRepository
{
    public class BatchRepository : IBatchRepository
    {
        private readonly IDatabase db;

        public BatchRepository()
        {
            db = Database.Instance;
        }

        public void Add(Batch entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.AdmissionYear, entity.AdmissionYear);
            db.AddParameter(cmd, Params.GraduationYear, entity.GraduationYear);
            db.AddParameter(cmd, Params.OrgUnitID, entity.OrgUnitID);
            db.AddParameter(cmd, Params.CurriculumID, entity.CurriculumID);

            entity.BatchID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(Batch entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.BatchID, entity.BatchID);
            db.Execute(cmd);
        }


        public IEnumerable<Batch> GetAll()
        {
            List<Batch> batches = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            batches = DBHelper.Convert<List<Batch>>(result);

            return batches;
        }

        public Batch GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.BatchID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Batch found = DBHelper.Convert<Batch>(result);

            return found;
        }

        public void Update(Batch entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.BatchID, entity.BatchID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.AdmissionYear, entity.AdmissionYear);
            db.AddParameter(cmd, Params.GraduationYear, entity.GraduationYear);
            db.AddParameter(cmd, Params.OrgUnitID, entity.OrgUnitID);
            db.AddParameter(cmd, Params.CurriculumID, entity.CurriculumID);
            db.Execute(cmd);
        }


        private struct Procds
        {
            public const string Insert = "spInsertBatch";
            public const string Update = "spUpdateBatch";
            public const string Delete = "spDeleteBatch";
            public const string Find = "spFindBatch";
            public const string GetAll = "spGetAllBatch";
        }

        private struct Params
        {
            public const string BatchID = "@BatchID";
            public const string ShortName = "@ShortName";
            public const string Name = "@Name";
            public const string AdmissionYear = "@AdmissionYear";
            public const string GraduationYear = "@GraduationYear";
            public const string OrgUnitID = "@OrgUnitID";
            public const string CurriculumID = "@CurriculumID";
        }
    }
}
