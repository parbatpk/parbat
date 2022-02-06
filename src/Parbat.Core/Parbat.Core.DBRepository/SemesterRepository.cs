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
    public class SemesterRepository : ISemesterRepository
    {
        private IDatabase db;

        public SemesterRepository()
        {
            db = Database.Instance;
        }

        public void Add(Semester entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.StudentGroupID, entity.StudentGroupID);
            db.AddParameter(cmd, Params.TermID, entity.TermID);

            entity.SemesterID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(Semester entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.SemesterID, entity.SemesterID);
            db.Execute(cmd);
        }

        public IEnumerable<Semester> GetAll()
        {
            List<Semester> semesters = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            semesters = DBHelper.Convert<List<Semester>>(result);

            return semesters;
        }

        public Semester GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.SemesterID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Semester found = DBHelper.Convert<Semester>(result);

            return found;
        }

        public void Update(Semester entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.SemesterID, entity.SemesterID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.StudentGroupID, entity.StudentGroupID);
            db.AddParameter(cmd, Params.TermID, entity.TermID);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertSemester";
            public const string Update = "spUpdateSemester";
            public const string Delete = "spDeleteSemester";
            public const string Find = "spFindSemester";
            public const string GetAll = "spGetAllSemester";
        }

        private struct Params
        {
            public const string SemesterID = "@SemesterID";
            public const string ShortName = "@ShortName";
            public const string Name = "@Name";
            public const string StudentGroupID = "@StudentGroupID";
            public const string TermID = "@TermID";
        }
    }
}
