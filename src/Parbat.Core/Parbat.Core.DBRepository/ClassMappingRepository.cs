using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ClassMappingRepository : IClassMappingRepository
    {
        private IDatabase db;

        public ClassMappingRepository()
        {
            db = Database.Instance;
        }

        public void Add(ClassMapping entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.OfferingID, entity.OfferingID);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);

            entity.ClassMappingID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(ClassMapping entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ClassMappingID, entity.ClassMappingID);
            db.Execute(cmd);
        }

        public IEnumerable<ClassMapping> GetAll()
        {
            List<ClassMapping> classMapping = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            classMapping = DBHelper.Convert<List<ClassMapping>>(result);

            return classMapping;
        }

        public ClassMapping GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ClassMappingID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            ClassMapping found = DBHelper.Convert<ClassMapping>(result);

            return found;
        }

        public void Update(ClassMapping entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ClassMappingID, entity.ClassMappingID);
            db.AddParameter(cmd, Params.OfferingID, entity.OfferingID);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertClassMapping";
            public const string Update = "spUpdateClassMapping";
            public const string Delete = "spDeleteClassMapping";
            public const string Find = "spFindClassMapping";
            public const string GetAll = "spGetAllClassMapping";
        }

        private struct Params
        {
            public const string ClassMappingID = "@ClassMappingID";
            public const string OfferingID = "@OfferingID";
            public const string ClassID = "@ClassID";
        }
    }
}
