using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class CurriculumTypeRepository : ICurriculumTypeRepository
    {
        private readonly IDatabase db;

        public CurriculumTypeRepository()
        {
            db = Database.Instance;
        }
       
        public void Add(CurriculumType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, entity.Name);

            entity.CurriculumTypeID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(CurriculumType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.CurriculumTypeID, entity.CurriculumTypeID);
            db.Execute(cmd);
        }

        public IEnumerable<CurriculumType> GetAll()
        {
            List<CurriculumType> curriculamType = new List<CurriculumType>();
            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            curriculamType = DBHelper.Convert<List<CurriculumType>>(result);

            return curriculamType;
        }

        public CurriculumType GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.CurriculumTypeID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            CurriculumType found = DBHelper.Convert<CurriculumType>(result);

            return found;
        }

        public void Update(CurriculumType entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.CurriculumTypeID, entity.CurriculumTypeID);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertCurriculumType";
            public const string Update = "spUpdateCurriculumType";
            public const string Delete = "spDeleteCurriculumType";
            public const string Find = "spFindCurriculumType";
            public const string GetAll = "spGetAllCurriculumType";
        }

        private struct Params
        {
            public const string CurriculumTypeID = "@CurriculumTypeID";
            public const string Name = "@Name";
        }
    }
}
