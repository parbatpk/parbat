using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class OrgUnitTypeRepository : IOrgUnitTypeRepository
    {
        private readonly IDatabase db;

        public OrgUnitTypeRepository()
        {
            db = Database.Instance;
        }

        public void Add(OrgUnitType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);

            entity.OrgUnitTypeID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(OrgUnitType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.OrgUnitTypeID, entity.OrgUnitTypeID);
            db.Execute(cmd);

        }

        public IEnumerable<OrgUnitType> GetAll()
        {
            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            var orgUnitTypes = DBHelper.Convert<List<OrgUnitType>>(result);

            return orgUnitTypes;
        }

        public OrgUnitType GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.OrgUnitTypeID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            OrgUnitType found = DBHelper.Convert<OrgUnitType>(result);

            return found;
        }

        public void Update(OrgUnitType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.OrgUnitTypeID, entity.OrgUnitTypeID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertOrgUnitType";
            public const string Update = "spUpdateOrgUnitType";
            public const string Delete = "spDeleteOrgUnitType";
            public const string Find = "spFindOrgUnitType";
            public const string GetAll = "spGetAllOrgUnitType";
        }

        private struct Params
        {
            public const string OrgUnitTypeID = "@OrgUnitTypeID";
            public const string Name = "@Name";
            public const string ShortName = "@ShortName";
        }
    }
}
