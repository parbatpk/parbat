using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class OrgUnitRepository : IOrgUnitRepository
    {
        private readonly IDatabase db;

        public OrgUnitRepository()
        {
            db = Database.Instance;
        }

        public void Add(OrgUnit entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.OrgUnitTypeID, entity.OrgUnitTypeID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.ParentUnitID, entity.ParentUnitID);
            db.AddParameter(cmd, Params.IsAllowAdmission, entity.IsAllowAdmission);

            entity.OrgUnitID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(OrgUnit entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.OrgUnitID, entity.OrgUnitID);
            db.Execute(cmd);
        }

        public IEnumerable<OrgUnit> FindParent(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.FindParent);
            db.AddParameter(cmd, Params.ParentUnitID, id);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            var found = DBHelper.Convert<List<OrgUnit>>(result);

            return found;
        }

        public IEnumerable<OrgUnit> GetAll()
        {
            List<OrgUnit> batches = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            batches = DBHelper.Convert<List<OrgUnit>>(result);

            return batches;
        }

        public IEnumerable<OrgUnit> GetAllbyParentUnitId(long id)
        {
            List<OrgUnit> batches = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAllbyParentUnitId);
            db.AddParameter(cmd, Params.ParentUnitID,id);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            batches = DBHelper.Convert<List<OrgUnit>>(result);

            return batches;
        }

        public OrgUnit GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.OrgUnitID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            OrgUnit found = DBHelper.Convert<OrgUnit>(result);

            return found;
        }

        public void Update(OrgUnit entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.OrgUnitID, entity.OrgUnitID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.OrgUnitTypeID, entity.OrgUnitTypeID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.ParentUnitID, entity.ParentUnitID);
            db.AddParameter(cmd, Params.IsAllowAdmission, entity.IsAllowAdmission);
            db.Execute(cmd);
        }

        
        private struct Procds
        {
            public const string Insert = "spInsertOrgUnit";
            public const string Update = "spUpdateOrgUnit";
            public const string Delete = "spDeleteOrgUnit";
            public const string Find = "spFindOrgUnit";
            public const string GetAll = "spGetAllOrgUnit";
            public const string GetAllbyParentUnitId = "spGetAllOrgUnitbyParentUnitID";

            //non Core
            public const string FindParent = "spFindParentOrgUnit";
        }

        private struct Params
        {
            public const string OrgUnitID = "@OrgUnitID";
            public const string Name = "@Name";
            public const string ShortName = "@ShortName";
            public const string OrgUnitTypeID = "@OrgUnitTypeID";
            public const string ParentUnitID = "@ParentUnitID";
            public const string IsAllowAdmission = "@IsAllowAdmission";
        }
    }
}
