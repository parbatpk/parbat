using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class CurriculumRepository : ICurriculumRepository
    {
        private IDatabase db;
        public CurriculumRepository()
        {
            db = Database.Instance;
        }

        public void Add(Curriculum entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.OwnerUnitID, entity.OwnerUnitID);
            db.AddParameter(cmd, Params.TotalCourses, entity.TotalCourses);
            db.AddParameter(cmd, Params.TotalCreditHrs, entity.TotalCreditHrs);
            db.AddParameter(cmd, Params.IsLimitCourses, entity.IsLimitCourses);
            db.AddParameter(cmd, Params.IsLimitCreditHrs, entity.IsLimitCreditHrs);
            db.AddParameter(cmd, Params.CurriculumTypeID, entity.CurriculumTypeID);

            entity.CurriculumID = Convert.ToInt32(db.ExecuteScalar(cmd));
        }

        public void Delete(Curriculum entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.CurriculumID, entity.CurriculumID);
            db.Execute(cmd);
        }

        public IEnumerable<Curriculum> GetAll()
        {
            List<Curriculum> curriculam = new List<Curriculum>();
            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            curriculam = DBHelper.Convert<List<Curriculum>>(result);

            return curriculam;
        }

        public Curriculum GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.CurriculumID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Curriculum found = DBHelper.Convert<Curriculum>(result);

            return found;
        }

        public void Update(Curriculum entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.CurriculumID, entity.CurriculumID);
            db.AddParameter(cmd, Params.ShortName, entity.ShortName);
            db.AddParameter(cmd, Params.Name, entity.Name);
            db.AddParameter(cmd, Params.OwnerUnitID, entity.OwnerUnitID);
            db.AddParameter(cmd, Params.TotalCourses, entity.TotalCourses);
            db.AddParameter(cmd, Params.TotalCreditHrs, entity.TotalCreditHrs);
            db.AddParameter(cmd, Params.IsLimitCourses, entity.IsLimitCourses);
            db.AddParameter(cmd, Params.IsLimitCreditHrs, entity.IsLimitCreditHrs);
            db.AddParameter(cmd, Params.CurriculumTypeID, entity.CurriculumTypeID);

            db.Execute(cmd);
        }

        /// <summary>
        /// Not core Methods
        /// </summary>
        public IEnumerable<Curriculum> ComponentTotalCreditCourse(long id)
        {
            List<Curriculum> componenetTotalCredeitCourse = new List<Curriculum>();

            DbCommand cmd = db.CreateSPCommand(Procds.ComponentTotalCourseCreditHrs);
            db.AddParameter(cmd, Params.CurriculumID, id);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            componenetTotalCredeitCourse = DBHelper.Convert<List<Curriculum>>(result);

            return componenetTotalCredeitCourse;
        }

        public IEnumerable<Curriculum> GetOwnerUnit(long id)
        {
            List<Curriculum> ownerUnit = new List<Curriculum>();

            DbCommand cmd = db.CreateSPCommand(Procds.GetOwnerUnit);
            db.AddParameter(cmd, Params.OwnerUnitID, id);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            ownerUnit = DBHelper.Convert<List<Curriculum>>(result);

            return ownerUnit;
        }

        public IEnumerable<Curriculum> GetCurriculumType(long id)
        {
            List<Curriculum> ownerUnit = new List<Curriculum>();

            DbCommand cmd = db.CreateSPCommand(Procds.GetCurriculumType);
            db.AddParameter(cmd, Params.CurriculumTypeID, id);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            ownerUnit = DBHelper.Convert<List<Curriculum>>(result);

            return ownerUnit;
        }



        public struct Procds
        {
            public const string Insert = "spInsertCurriculum";
            public const string Update = "spUpdateCurriculum";
            public const string Delete = "spDeleteCurriculum";
            public const string Find = "spFindCurriculum";
            public const string GetAll = "spGetAllCurriculum";
            
            public const string ComponentTotalCourseCreditHrs = "spComponentTotalCourseCreditHrs";
            public const string GetOwnerUnit = "spGetOwnerUnit";
            public const string GetCurriculumType = "spGetCurriculumType";
        }

        public struct Params
        {
            public const string CurriculumID = "@CurriculumID";
            public const string Name = "@Name";
            public const string ShortName = "@ShortName";
            public const string OwnerUnitID = "@OwnerUnitID";
            public const string TotalCourses = "@TotalCourses";
            public const string TotalCreditHrs = "@TotalCreditHrs";
            public const string IsLimitCourses = "@IsLimitCourses";
            public const string IsLimitCreditHrs = "@IsLimitCreditHrs";
            public const string CurriculumTypeID = "@CurriculumTypeID";
        }
    }
}
