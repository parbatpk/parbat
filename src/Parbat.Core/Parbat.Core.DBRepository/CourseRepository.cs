using Parbat.Data;
using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Text.Json;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Text;

namespace Parbat.Core.DBRepository
{
    public class CourseRepository : ICourseRepository
    {
        readonly IDatabase db;
        public CourseRepository()
        {
            db = Database.Instance;
        }

        public void Add(Course c)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.Name, c.Name);
            db.AddParameter(cmd, Params.ShortName, c.ShortName);
            db.AddParameter(cmd, Params.OwnerID, c.OwnerID);
            db.AddParameter(cmd, Params.TheoryCredit, c.TheoryCredit);
            db.AddParameter(cmd, Params.LabCredit, c.LabCredit);
            db.AddParameter(cmd, Params.Code, c.Code);
            db.AddParameter(cmd, Params.CourseTypeID, c.CourseTypeID);

            c.CourseID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(Course c)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.CourseID, c.CourseID);
            db.Execute(cmd);
        }

        public IEnumerable<Course> GetAll()
        {
            List<Course> courses = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));

            courses = DBHelper.Convert<List<Course>>(result);

            return courses;
        }

        public Course GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.CourseID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            Course found = DBHelper.Convert<Course>(result);

            return found;
        }

        public void Update(Course c)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Update);
            db.AddParameter(cmd, Params.CourseID, c.CourseID);
            db.AddParameter(cmd, Params.Name, c.Name);
            db.AddParameter(cmd, Params.ShortName, c.ShortName);
            db.AddParameter(cmd, Params.OwnerID, c.OwnerID);
            db.AddParameter(cmd, Params.TheoryCredit, c.TheoryCredit);
            db.AddParameter(cmd, Params.LabCredit, c.LabCredit);
            db.AddParameter(cmd, Params.Code, c.Code);
            db.AddParameter(cmd, Params.CourseTypeID, c.CourseTypeID);

            db.Execute(cmd);
        }

        public IEnumerable<OrgUnit> GetAllOrgUnitContainsCourse()
        {
            List<OrgUnit> orgUnit = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAllOrgUnitContainsCourse);
            string result = Convert.ToString(db.ExecuteScalar(cmd));

            using (var ms = new MemoryStream(Encoding.Unicode.GetBytes(result)))
            {
                DataContractJsonSerializer deserializer =
                    new DataContractJsonSerializer(typeof(List<OrgUnit>));
                orgUnit = (List<OrgUnit>)deserializer.ReadObject(ms);
            }


            return orgUnit;
        }

        public IEnumerable<Course> GetAllCourseSpecificOrgUnit(long ownerId)
        {
            List<Course> courses = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAllCourseSpecificOrgUnit);
            db.AddParameter(cmd, Params.OwnerID, ownerId);

            string result = Convert.ToString(db.ExecuteScalar(cmd));
            courses = DBHelper.Convert<List<Course>>(result);

            //using (var ms = new MemoryStream(Encoding.Unicode.GetBytes(result)))
            //{
            //    DataContractJsonSerializer deserializer =
            //        new DataContractJsonSerializer(typeof(List<Course>));
            //    courses = (List<Course>)deserializer.ReadObject(ms);
            //}


            return courses;
        }

        private struct Procds
        {
            //Courses core sps
            public const string Insert = "spInsertCourse";
            public const string Update = "spUpdateCourse";
            public const string Delete = "spDeleteCourse";
            public const string Find = "spFindCourse";
            public const string GetAll = "spGetAllCourse";
            public const string GetCourseName = "spGetCourseName";
            public const string FindCourseID = "spFindCourseIDComponentCourse";

            //Courses related sps
            public const string GetAllOrgUnitContainsCourse = "spGetAllOrgUnitContainsCourse";
            public const string GetAllCourseSpecificOrgUnit = "spGetAllCourseSpecificOrgUnit";
        }

        private struct Params
        {
            public const string Name = "@Name";
            public const string CourseID = "@CourseID";
            public const string ShortName = "@ShortName";
            public const string OwnerID = "@OwnerID";
            public const string TheoryCredit = "@TheoryCredit";
            public const string LabCredit = "@LabCredit";
            public const string Code = "@Code";
            public const string CourseTypeID = "@CourseTypeID";
        }
    }
}
