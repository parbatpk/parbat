using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects.Models;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class ClassModuleRepository : IClassModuleRepository
    {
        private IDatabase db;

        public ClassModuleRepository()
        {
            db = Database.Instance;
        }

        public void Add(ClassModule entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);
            db.AddParameter(cmd, Params.FacultyID, entity.FacultyID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.TheoryCredit, entity.TheoryCredit);
            db.AddParameter(cmd, Params.LabCredit, entity.LabCredit);

            entity.ClassModuleID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(ClassModule entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.ClassModuleID, entity.ClassModuleID);
            db.Execute(cmd);
        }

        public IEnumerable<ClassModule> GetAll()
        {
            List<ClassModule> classesModule = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            classesModule = DBHelper.Convert<List<ClassModule>>(result);

            return classesModule;
        }

        public ClassModule GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.ClassModuleID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            ClassModule found = DBHelper.Convert<ClassModule>(result);

            return found;
        }

        public void Update(ClassModule entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ClassModuleID, entity.ClassModuleID);
            db.AddParameter(cmd, Params.ClassID, entity.ClassID);
            db.AddParameter(cmd, Params.FacultyID, entity.FacultyID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.TheoryCredit, entity.TheoryCredit);
            db.AddParameter(cmd, Params.LabCredit, entity.LabCredit);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertClassModule";
            public const string Update = "spUpdateClassModule";
            public const string Delete = "spDeleteClassModule";
            public const string Find = "spFindClassModule";
            public const string GetAll = "spGetAllClassModule";
        }

        private struct Params
        {
            public const string ClassModuleID = "@ClassModuleID";
            public const string ClassID = "@ClassID";
            public const string FacultyID = "@FacultyID";
            public const string ShortName = "@ShortName";
            public const string TheoryCredit = "@TheoryCredit";
            public const string LabCredit = "@LabCredit";
        }
    }
}
