using System;
using System.Collections.Generic;
using Parbat.Data;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ClassRepository : IClassRepository
    {
        readonly IDatabase db;
        public ClassRepository()
        {
            db = Database.Instance;
        }

        public void Add(Class c)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ShortName, c.ShortName);
            db.AddParameter(cmd, Params.Name, c.Name);
            db.AddParameter(cmd, Params.Capacity, c.Capacity);

            c.ClassId = Convert.ToInt64(db.ExecuteScalar(cmd));

        }

        public void Delete(Class c)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ClassID, c.ClassId);
            db.Execute(cmd);
        }

        public IEnumerable<Class> GetAll()
        {
            List<Class> classes = new();
            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));

            classes = DBHelper.Convert<List<Class>>(result);

            return classes;
        }

        public Class GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ClassID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Class found = DBHelper.Convert<Class>(result);

            return found;
        }

        public void Update(Class c)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.ClassID, c.ClassId);
            db.AddParameter(cmd, Params.ShortName, c.ShortName);
            db.AddParameter(cmd, Params.Name, c.Name);
            db.AddParameter(cmd, Params.Capacity, c.Capacity);

            db.Execute(cmd);

        }
        private struct Procds
        {
            public const string Insert = "spInsertClass";
            public const string Update = "spUpdateClass";
            public const string Delete = "spDeleteClass";
            public const string Find = "spFindClass";
            public const string GetAll = "spGetAllClass";
        }

        private struct Params
        {
            public const string ClassID = "@ClassID";
            public const string ShortName = "@ShortName";
            public const string Name = "@Name";
            public const string Capacity = "@Capacity";
        }
    }
}
