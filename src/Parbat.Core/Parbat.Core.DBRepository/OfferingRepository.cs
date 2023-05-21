using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class OfferingRepository : IOfferingRepository
    {
        private IDatabase db;

        public OfferingRepository()
        {
            db = Database.Instance;
        }

        public void Add(Offering entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.CousreID, entity.CousreID);
            db.AddParameter(cmd, Params.TermID, entity.TermID);
            db.AddParameter(cmd, Params.OrgUnitID, entity.OrgUnitID);
            db.AddParameter(cmd, Params.SemesterID, entity.SemesterID);

            entity.OfferingID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(Offering entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.OfferingID, entity.OfferingID);
            db.Execute(cmd);
        }

        public IEnumerable<Offering> GetAll()
        {
            List<Offering> offerings = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            offerings = DBHelper.Convert<List<Offering>>(result);

            return offerings;
        }

        public Offering GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.OfferingID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Offering found = DBHelper.Convert<Offering>(result);

            return found;
        }

        public void Update(Offering entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.OfferingID, entity.OfferingID);
            db.AddParameter(cmd, Params.CousreID, entity.CousreID);
            db.AddParameter(cmd, Params.TermID, entity.TermID);
            db.AddParameter(cmd, Params.OrgUnitID, entity.OrgUnitID);
            db.AddParameter(cmd, Params.SemesterID, entity.SemesterID);

            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertOffering";
            public const string Update = "spUpdateOffering";
            public const string Delete = "spDeleteOffering";
            public const string Find = "spFindOffering";
            public const string GetAll = "spGetAllOffering";
        }

        private struct Params
        {
            public const string OfferingID = "@OfferingID";
            public const string CousreID = "@CousreID";
            public const string TermID = "@TermID";
            public const string OrgUnitID = "@OrgUnitID";
            public const string SemesterID = "@SemesterID";
        }
    }
}
