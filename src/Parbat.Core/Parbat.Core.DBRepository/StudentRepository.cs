using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class StudentRepository : IStudentRepository
    {
        private readonly IDatabase db;

        public StudentRepository()
        {
            db = Database.Instance;
        }

        public void Add(Student entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Identifier, entity.Identifier);
            db.AddParameter(cmd, Params.FirstName, entity.FirstName);
            db.AddParameter(cmd, Params.LastName, entity.LastName);

            entity.StudentID = Convert.ToInt64(cmd.ExecuteScalar());
        }

        public void Delete(Student entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.StudentID, entity.StudentID);
            db.Execute(cmd);
        }

        public IEnumerable<Student> GetAll()
        {
            List<Student> student = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            student= DBHelper.Convert<List<Student>>(result);

            return student;
        }

        public Student GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.StudentID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            var found = DBHelper.Convert<Student>(result);

            return found;
        }

        public void Update(Student entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.StudentID, entity.StudentID);
            db.AddParameter(cmd, Params.Identifier, entity.Identifier);
            db.AddParameter(cmd, Params.FirstName, entity.FirstName);
            db.AddParameter(cmd, Params.LastName, entity.LastName);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertStudent";
            public const string Update = "spUpdateStudent";
            public const string Delete = "spDeleteStudent";
            public const string Find = "spFindStudent";
            public const string GetAll = "spGetAllStudent";
        }

        private struct Params
        {
            public const string StudentID = "@StudentID";
            public const string Identifier = "@Identifier";
            public const string FirstName = "@FirstName";
            public const string LastName = "@LastName";
            
        }
    }
}
