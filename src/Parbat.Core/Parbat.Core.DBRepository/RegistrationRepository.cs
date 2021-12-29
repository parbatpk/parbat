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
    public class RegistrationRepository : IRegistrationRepository
    {
        private IDatabase db;

        public RegistrationRepository()
        {
            db = Database.Instance;
        }

        public void Add(Registration entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.RegisterDate, entity.RegisterDate);
            db.AddParameter(cmd, Params.StudentProgramID, entity.StudentProgramID);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);
            db.AddParameter(cmd, Params.RegisterStatusID, entity.RegisterStatusID);
           
            entity.RegistrationID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(Registration entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.RegistrationID, entity.RegistrationID);
            db.Execute(cmd);
        }

        public IEnumerable<Registration> GetAll()
        {
            List<Registration> registration = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            registration = DBHelper.Convert<List<Registration>>(result);

            return registration;
        }

        public Registration GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.RegistrationID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Registration found = DBHelper.Convert<Registration>(result);

            return found;
        }

        public void Update(Registration entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.RegistrationID, entity.RegistrationID);
            db.AddParameter(cmd, Params.RegisterDate, entity.RegisterDate);
            db.AddParameter(cmd, Params.StudentProgramID, entity.StudentProgramID);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);
            db.AddParameter(cmd, Params.RegisterStatusID, entity.RegisterStatusID);
            db.Execute(cmd);
        }


        private struct Procds
        {
            public const string Insert = "spInsertRegistration";
            public const string Update = "spUpdateRegistration";
            public const string Delete = "spDeleteRegistration";
            public const string Find = "spFindRegistration";
            public const string GetAll = "spGetAllRegistration";
        }

        private struct Params
        {
            public const string RegistrationID = "@RegistrationID";
            public const string RegisterDate = "@RegisterDate";
            public const string StudentProgramID = "@StudentProgramID";
            public const string ClassID = "@ClassID";
            public const string RegisterStatusID = "@RegisterStatusID";
        }
    }
}
