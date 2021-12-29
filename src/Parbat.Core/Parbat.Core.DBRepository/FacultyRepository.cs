using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class FacultyRepository : IFacultyRepository
    {
        private IDatabase db;

        public FacultyRepository()
        {
            db = Database.Instance;
        }

        public void Add(Faculty entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.FirstName, entity.FirstName);
            db.AddParameter(cmd, Params.LastName, entity.LastName);

            entity.FacultyID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(Faculty entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.FacultyID, entity.FacultyID);
            db.Execute(cmd);
        }

        public IEnumerable<Faculty> GetAll()
        {
            List<Faculty> faculties = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            faculties = DBHelper.Convert<List<Faculty>>(result);

            return faculties;
        }

        public Faculty GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.FacultyID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Faculty found = DBHelper.Convert<Faculty>(result);

            return found;
        }

        public void Update(Faculty entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.FacultyID, entity.FacultyID);
            db.AddParameter(cmd, Params.FirstName, entity.FirstName);
            db.AddParameter(cmd, Params.LastName, entity.LastName);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertFaculty";
            public const string Update = "spUpdateFaculty";
            public const string Delete = "spDeleteFaculty";
            public const string Find = "spFindFaculty";
            public const string GetAll = "spGetAllFaculty";
        }

        private struct Params
        {
            public const string FacultyID = "@FacultyID";
            public const string FirstName = "@FirstName";
            public const string LastName = "@LastName";
        }
    }
}
