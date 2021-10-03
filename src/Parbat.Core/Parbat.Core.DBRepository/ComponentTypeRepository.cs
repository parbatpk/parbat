using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ComponentTypeRepository : IComponentTypeRepository
    {
        private readonly IDatabase db;

        public ComponentTypeRepository()
        {
            db = Database.Instance;
        }
        public void Add(ComponentType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.IsRequired, entity.IsRequired);

            entity.ComponentTypeID = Convert.ToInt32(db.ExecuteScalar(cmd));
        }

        public void Delete(ComponentType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ComponentTypeID, entity.ComponentTypeID);
            db.Execute(cmd);
        }

        public IEnumerable<ComponentType> GetAll()
        {
            List<ComponentType> component = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            component = DBHelper.Convert<List<ComponentType>>(result);

            return component;
        }

        public ComponentType GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ComponentTypeID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            ComponentType found = DBHelper.Convert<ComponentType>(result);

            return found;
        }

        public void Update(ComponentType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.ComponentTypeID, entity.ComponentTypeID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.IsRequired, entity.IsRequired);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertComponentType";
            public const string Update = "spUpdateComponentType";
            public const string Delete = "spDeleteComponentType";
            public const string Find = "spFindComponentType";
            public const string GetAll = "spGetAllComponentType";
        }

        private struct Params
        {
            public const string ComponentTypeID = "@ComponentTypeID";
            public const string Name = "@Name";
            public const string IsRequired = "@IsRequired";
        }
    }
}
