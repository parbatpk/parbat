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
    /// Curriculum Type Table
    /// </summary>
    public class CurriculumType : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? CurriculumTypeID { get; set; }

        /// <summary>
        /// Curriculum Name
        /// </summary>
        [Required]
        public string Name { get; set; }

        /// <summary>
        /// Delete curriculum type
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Delete,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find Curriculum Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                CurriculumType found  = JsonSerializer.Deserialize<CurriculumType>(txt);

                return found;
            }
        }

        /// <summary>
        /// Get All curriculum type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.GetAll, con);
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
            if (this.CurriculumTypeID > 0)
            {
                this.Update(db);
                return this.CurriculumTypeID;
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                this.CurriculumTypeID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.CurriculumTypeID;
            }


        }

        /// <summary>
        /// Update Curriculum Type
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.CurriculumType.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@CurriculumTypeID", this.CurriculumTypeID));
                cmd.ExecuteNonQuery();
            }
        }
    }
}
