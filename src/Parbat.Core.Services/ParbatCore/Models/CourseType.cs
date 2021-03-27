using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Parbat.Data;

namespace ParbatCore.Models
{
    /// <summary>
    /// Course Type Table
    /// </summary>
    public class CourseType : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CourseTypeID { get; set; }

        /// <summary>
        /// Course Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Delete Course type
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CourseType.Delete,con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseTypeID", this.CourseTypeID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find Course Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CourseType.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseTypeID", this.CourseTypeID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    CourseType found = JsonSerializer.Deserialize<CourseType>(txt);
                    return found;
                }
                catch (JsonException e)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get All course type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CourseType.GetAll, con);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// Save Course Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            // If this is already saved object then just update
            if (this.CourseTypeID > 0)
            {
                this.Update(db);
                return this.CourseTypeID;
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CourseType.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                this.CourseTypeID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.CourseTypeID;
            }
        }

        /// <summary>
        /// Update Course Type
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CourseType.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CourseTypeID", this.CourseTypeID));
                cmd.ExecuteNonQuery();
            }
        }
    }

}
