using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class StudentGroupRepository : IStudentGroupRepository
    {
        private readonly IDatabase db;

        public StudentGroupRepository()
        {
            db = Database.Instance;
        }

        public void Add(StudentGroup entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.IsActive, entity.IsActive);

            entity.StudentGroupID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(StudentGroup entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.StudentGroupID, entity.StudentGroupID);
            db.Execute(cmd);
        }

        public IEnumerable<StudentGroup> GetAll()
        {
            List<StudentGroup> studentGroups = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            studentGroups = DBHelper.Convert<List<StudentGroup>>(result);

            return studentGroups;
        }

        public StudentGroup GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.StudentGroupID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            var found = DBHelper.Convert<StudentGroup>(result);

            return found;
        }

        public void Update(StudentGroup entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.StudentGroupID, entity.StudentGroupID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.IsActive, entity.IsActive);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertStudentGroup";
            public const string Update = "spUpdateStudentGroup";
            public const string Delete = "spDeleteStudentGroup";
            public const string GetAll = "spGetAllStudentGroup";
            public const string Find = "spFindStudentGroup";
        }

        private struct Params
        {
            public const string StudentGroupID = "@StudentGroupID";
            public const string Name = "@Name";
            public const string ShortName = "@ShortName";
            public const string IsActive = "@IsActive";
        }
    }
}
