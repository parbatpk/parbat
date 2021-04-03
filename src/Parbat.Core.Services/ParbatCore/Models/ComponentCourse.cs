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
    /// ComponentCourse Table
    /// </summary>
    public class ComponentCourse : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? ComponentCourseID { get; set; }

        /// <summary>
        /// ComponentCourse Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// ComponentCourse ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// ComponentCourse OwnerID
        /// </summary>
        [Required]
        public long OwnerID { get; set; }
        /// <summary>
        /// ComponentCourse TheoryCredit
        /// </summary>
        [Required]
        public int TheoryCredit { get; set; }
        /// <summary>
        /// ComponentCourse LabCredit
        /// </summary>
        [Required]
        public int LabCredit { get; set; }
        /// <summary>
        /// ComponentCourse Code
        /// </summary>
        public string Code { get; set; }
        /// <summary>
        /// ComponentCourse ComponentCourseTypeID
        /// </summary>
        [Required]
        public long ComponentCourseTypeID { get; set; }

        /// <summary>
        /// Delete ComponentCourse
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
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentCourse.Delete,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentCourseID", this.ComponentCourseID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find ComponentCourse
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentCourse.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentCourseID", this.ComponentCourseID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    ComponentCourse found = JsonSerializer.Deserialize<ComponentCourse>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get All ComponentCourse
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentCourse.GetAll, con);
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
            if (this.ComponentCourseID > 0)
            {
                this.Update(db);
                return this.ComponentCourseID;
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentCourse.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OwnerID", this.OwnerID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TheoryCredit", this.TheoryCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@LabCredit", this.LabCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Code", this.Code));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentCourseTypeID", this.ComponentCourseTypeID));
                this.ComponentCourseID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.ComponentCourseID;
            }


        }

        /// <summary>
        /// Update ComponentCourse
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Record not found");
            }
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentCourse.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentCourseID", this.ComponentCourseID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OwnerID", this.OwnerID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@TheoryCredit", this.TheoryCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@LabCredit", this.LabCredit));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Code", this.Code));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentCourseTypeID", this.ComponentCourseTypeID));
                cmd.ExecuteNonQuery();
            }
        }
    }
}
