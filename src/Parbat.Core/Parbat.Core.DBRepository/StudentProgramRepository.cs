using Parbat.Core.BaseRepository;
using Parbat.Core.DataObjects;
using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;

namespace Parbat.Core.DBRepository
{
    public class StudentProgramRepository : IStudentProgramRepository
    {
        private IDatabase db;

        public StudentProgramRepository()
        {
            db = Database.Instance;
        }

        public void Add(StudentProgram entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.StudentID, entity.StudentID);
            db.AddParameter(cmd, Params.BatchID, entity.BatchID);
            db.AddParameter(cmd, Params.StartDate, entity.StartDate);
            db.AddParameter(cmd, Params.EndDate, entity.EndDate);
            db.AddParameter(cmd, Params.StudentStatusID, entity.StudentStatusID);
            db.AddParameter(cmd, Params.OverrideCurriculumID, entity.OverrideCurriculumID);
            db.AddParameter(cmd, Params.MinorCurriculumID, entity.MinorCurriculumID);
            db.AddParameter(cmd, Params.StudentGroupID, entity.StudentGroupID);

            entity.StudentProgramID = Convert.ToInt64(db.ExecuteScalar(cmd));
        }

        public void Delete(StudentProgram entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Delete);
            db.AddParameter(cmd, Params.StudentProgramID, entity.StudentProgramID);
            db.Execute(cmd);
        }

        public IEnumerable<StudentProgram> GetAll()
        {
            List<StudentProgram> studentPrograms = new();

            DbCommand cmd = db.CreateSPCommand(Procds.GetAll);
            var result = Convert.ToString(db.ExecuteScalar(cmd));
            studentPrograms = DBHelper.Convert<List<StudentProgram>>(result);

            return studentPrograms;
        }

        public StudentProgram GetById(long id)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Find);
            db.AddParameter(cmd, Params.StudentProgramID, id);
            string result = Convert.ToString(db.ExecuteScalar(cmd));
            StudentProgram found = DBHelper.Convert<StudentProgram>(result);

            return found;
        }

        public void Update(StudentProgram entity)
        {
            DbCommand cmd = db.CreateSPCommand(Procds.Insert);
            db.AddParameter(cmd, Params.StudentProgramID, entity.StudentProgramID);
            db.AddParameter(cmd, Params.StudentID, entity.StudentID);
            db.AddParameter(cmd, Params.BatchID, entity.BatchID);
            db.AddParameter(cmd, Params.StartDate, entity.StartDate);
            db.AddParameter(cmd, Params.EndDate, entity.EndDate);
            db.AddParameter(cmd, Params.StudentStatusID, entity.StudentStatusID);
            db.AddParameter(cmd, Params.OverrideCurriculumID, entity.OverrideCurriculumID);
            db.AddParameter(cmd, Params.MinorCurriculumID, entity.MinorCurriculumID);
            db.AddParameter(cmd, Params.StudentGroupID, entity.StudentGroupID);
            db.Execute(cmd);
        }

        private struct Procds
        {
            public const string Insert = "spInsertStudentProgram";
            public const string Update = "spUpdateStudentProgram";
            public const string Delete = "spDeleteStudentProgram";
            public const string Find = "spFindStudentProgram";
            public const string GetAll = "spGetAllStudentProgram";
        }

        private struct Params
        {
            public const string StudentProgramID = "@StudentProgramID";
            public const string StudentID = "@StudentID";
            public const string BatchID = "@BatchID";
            public const string StartDate = "@StartDate";
            public const string EndDate = "@EndDate";
            public const string StudentStatusID = "@StudentStatusID";
            public const string OverrideCurriculumID = "@OverrideCurriculumID";
            public const string MinorCurriculumID = "@MinorCurriculumID";
            public const string StudentGroupID = "@StudentGroupID";
        }
    }
}
