using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

using System.Data.Common;
using Parbat.Data;
using System.Text.Json;
using System.ComponentModel.DataAnnotations;

namespace ParbatCore.Models
{
    /// <summary>
    /// Course Table
    /// </summary>
    public class Course : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CourseID { get; set; }

        /// <summary>
        /// Course Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// Course ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// Course OwnerID
        /// </summary>
        [Required]
        public long OwnerID { get; set; }
        /// <summary>
        /// Course TheoryCredit
        /// </summary>
        [Required]
        public int TheoryCredit { get; set; }
        /// <summary>
        /// Course LabCredit
        /// </summary>
        [Required]
        public int LabCredit { get; set; }
        /// <summary>
        /// Course Code
        /// </summary>
        public string Code { get; set; }
        /// <summary>
        /// Course CourseTypeID
        /// </summary>
        [Required]
        public long CourseTypeID { get; set; }

        /// <summary>
        /// Delete Course
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Record not found");
            }
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Course.Delete,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseID", this.CourseID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find Course
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Course.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseID", this.CourseID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    Course found = JsonSerializer.Deserialize<Course>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }
        
        /// <summary>
        /// Find Course Name
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject GetCourseName (IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Course.GetCourseName, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    Course found = JsonSerializer.Deserialize<Course>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }
       
        /// <summary>
        /// Find Course ID
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject FindCourseID(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Course.FindCourseID, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseID", this.CourseID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    Course found = JsonSerializer.Deserialize<Course>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get All Course
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Course.GetAll, con);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// Save Curruciulum Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            // If this is already saved object then just update
            if (this.CourseID > 0)
            {
                this.Update(db);
                return this.CourseID;
            }
            if (this.FindCourseID(db) != null)
            {
                throw new BOException("CourseID exist in ComponentCourse");
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Course.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OwnerID", this.OwnerID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TheoryCredit", this.TheoryCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@LabCredit", this.LabCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Code", this.Code));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseTypeID", this.CourseTypeID));
                this.CourseID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.CourseID;
            }


        }

        /// <summary>
        /// Update Course
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Record not found");
            }
            if (this.FindCourseID(db) != null)
            {
                throw new BOException("CourseID exist in ComponentCourse");
            }
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Course.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseID", this.CourseID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OwnerID", this.OwnerID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TheoryCredit", this.TheoryCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@LabCredit", this.LabCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Code", this.Code));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseTypeID", this.CourseTypeID));
                cmd.ExecuteNonQuery();
            }
        }
    }
}
