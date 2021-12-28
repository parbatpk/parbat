using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    class RegisterStatusRepository : IRegisterStatusRepository
    {
        private readonly IDatabase db;

        public RegisterStatusRepository()
        {
            db = Database.Instance;
        }

        public void Add(RegisterStatus entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);

            entity.RegisterStatusID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(RegisterStatus entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.RegisterStatusID, entity.RegisterStatusID);
            db.Execute(cmd);
        }

        public IEnumerable<RegisterStatus> GetAll()
        {
            List<RegisterStatus> registerStatus = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            registerStatus = DBHelper.Convert<List<RegisterStatus>>(result);

            return registerStatus;
        }

        public RegisterStatus GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.RegisterStatusID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            var found = DBHelper.Convert<RegisterStatus>(result);

            return found;
        }

        public void Update(RegisterStatus entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.RegisterStatusID, entity.RegisterStatusID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertRegisterStatus";
            public const string Update = "spUpdateRegisterStatus";
            public const string Delete = "spDeleteRegisterStatus";
            public const string GetAll = "spGetAllRegisterStatus";
            public const string Find = "spFindRegisterStatus";
        }

        private struct Params
        {
            public const string RegisterStatusID = "@RegisterStatusID";
            public const string ShortName = "@ShortName";
        }
    }
}
