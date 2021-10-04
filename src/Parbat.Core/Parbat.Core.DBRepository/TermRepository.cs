using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class TermRepository : ITermRepository
    {
        private readonly IDatabase db;

        public TermRepository()
        {
            db = Database.Instance;
        }

        public void Add(Term entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.IsActive, entity.IsActive);
            db.AddParameter(cmd, Params.StartDate, entity.StartDate);
            db.AddParameter(cmd, Params.EndDate, entity.EndDate);

            entity.TermID = Convert.ToInt64(cmd.ExecuteScalar());
        }

        public void Delete(Term entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.TermID, entity.TermID);
            db.Execute(cmd);
        }

        public IEnumerable<Term> GetAll()
        {
            List<Term> terms = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            terms = DBHelper.Convert<List<Term>>(result);

            return terms;
        }

        public Term GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.TermID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            var found = DBHelper.Convert<Term>(result);

            return found;
        }

        public void Update(Term entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.TermID, entity.TermID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.IsActive, entity.IsActive);
            db.AddParameter(cmd, Params.StartDate, entity.StartDate);
            db.AddParameter(cmd, Params.EndDate, entity.EndDate);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertTerm";
            public const string Update = "spUpdateTerm";
            public const string Delete = "spDeleteTerm";
            public const string GetAll = "spGetAllTerm";
            public const string Find = "spFindTerm";
        }

        private struct Params
        {
            public const string TermID = "@TermID";
            public const string Name = "@Name";
            public const string ShortName = "@ShortName";
            public const string IsActive = "@IsActive";
            public const string StartDate = "@StartDate";
            public const string EndDate = "@EndDate";
        }
    }
}
