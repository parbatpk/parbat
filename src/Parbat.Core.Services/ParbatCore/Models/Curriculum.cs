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
    /// Curriculum Table
    /// </summary>
    public class Curriculum : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CurriculumID { get; set; }

        /// <summary>
        /// Curriculum Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// Curriculum ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// Curriculum OwnerID
        /// </summary>
        [Required]
        public long OwnerUnitID { get; set; }
        /// <summary>
        /// Curriculum TotalCourses
        /// </summary>
        [Required]
        public int TotalCourses { get; set; }
        /// <summary>
        /// Curriculum TotalCreditHrs
        /// </summary>
        [Required]
        public int TotalCreditHrs { get; set; }
        /// <summary>
        /// Curriculum IsLimitCourses
        /// </summary>
        [Required]
        public bool IsLimitCourses { get; set; }
        /// <summary>
        /// Curriculum IsLimitCreditHrs
        /// </summary>
        [Required]
        public bool IsLimitCreditHrs { get; set; }
        /// <summary>
        /// Curriculum CurriculumTypeID
        /// </summary>
        [Required]
        public long CurriculumTypeID { get; set; }

        /// <summary>
        /// Delete Curriculum
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
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.Delete,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumID", this.CurriculumID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find Curriculum
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumID", this.CurriculumID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    Curriculum found = JsonSerializer.Deserialize<Curriculum>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get Component TotalCreditCourse
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable ComponentTotalCreditCourse(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.ComponentTotalCourseCreditHrs, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumID", this.CurriculumID));
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }
        /// <summary>
        /// Get Component TotalCreditCourse
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetOwnerUnit(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.GetOwnerUnit, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OwnerUnitID", this.OwnerUnitID));
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }
        /// <summary>
        /// Get Component TotalCreditCourse
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetCurriculumType (IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.GetCurriculumType, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// Get All Curriculum
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.GetAll, con);
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
            if (this.CurriculumID > 0)
            {
                this.Update(db);
                return this.CurriculumID;
            }
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OwnerUnitID", this.OwnerUnitID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TotalCourses", this.TotalCourses));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TotalCreditHrs", this.TotalCreditHrs));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsLimitCourses", this.IsLimitCourses));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsLimitCreditHrs", this.IsLimitCreditHrs));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                this.CurriculumID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.CurriculumID;
            }


        }

        /// <summary>
        /// Update Curriculum
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Record not found");
            }
            //DataTable dt = this.ComponentTotalCreditCourse(db);
            //if (dt != null)
            //{
            //    DataRow dr = dt.Rows[0];
            //    if (this.TotalCourses >= Convert.ToInt32(dr["TotalCourses"]) && this.TotalCreditHrs >= Convert.ToInt32(dr["TotalCreditHrs"]))
            //    {
            //        throw new BOException("TotalCourses or TotalCreditHrs are less then total component ");
            //    }
            //}
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Curriculum.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumID", this.CurriculumID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OwnerUnitID", this.OwnerUnitID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TotalCourses", this.TotalCourses));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TotalCreditHrs", this.TotalCreditHrs));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsLimitCourses", this.IsLimitCourses));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsLimitCreditHrs", this.IsLimitCreditHrs));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                cmd.ExecuteNonQuery();
            }
        }
    }
}
