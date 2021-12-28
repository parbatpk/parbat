using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    internal class ClassRepository : IClassRepository
    {
        IDatabase db;

        public ClassRepository()
        {
            db = Database.Instance;
        }

        public void Add(Class entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Capacity, entity.Capacity);

            entity.ClassID = Convert.ToInt64(db.ExecuteScalar(cmd));

        }

        public void Delete(Class entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);
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

        public void Update(Class entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.Capacity, entity.Capacity);
          
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