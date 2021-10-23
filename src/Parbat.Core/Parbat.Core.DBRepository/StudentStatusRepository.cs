using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class StudentStatusRepository : IStudentStatusRepository
    {
        private readonly IDatabase db;

        public StudentStatusRepository()
        {
            db = Database.Instance;
        }

        public void Add(StudentStatus entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);

            entity.StudentStatusID = Convert.ToInt64(cmd.ExecuteScalar());
        }

        public void Delete(StudentStatus entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.StudentStatusID, entity.StudentStatusID);
            db.Execute(cmd);
        }

        public IEnumerable<StudentStatus> GetAll()
        {
            List<StudentStatus> studentStatuses = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            studentStatuses = DBHelper.Convert<List<StudentStatus>>(result);

            return studentStatuses;
        }

        public StudentStatus GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.StudentStatusID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            var found = DBHelper.Convert<StudentStatus>(result);

            return found;
        }

        public void Update(StudentStatus entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.StudentStatusID, entity.StudentStatusID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertStudentStatus";
            public const string Update = "spUpdateStudentStatus";
            public const string Delete = "spDeleteStudentStatus";
            public const string Find = "spFindStudentStatus";
            public const string GetAll = "spGetAllStudentStatus";
        }

        private struct Params
        {
            public const string StudentStatusID = "@StudentStatusID";
            public const string Name = "@Name";
        }
    }
}
