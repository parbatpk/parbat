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
    /// OrgUnit Table
    /// </summary>
    public class OrgUnit : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? OrgUnitID { get; set; }
        /// <summary>
        /// Forign Key of OrgUnitTypeID
        /// </summary>
        [Required]
        public long OrgUnitTypeID { get; set; }
        /// <summary>
        /// OrgUnit Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// OrgUnit ShortName
        /// </summary>
        [Required]
        public string ShortName { get; set; }
        /// <summary>
        /// OrgUnit ParentID
        /// </summary>
        public long? ParentUnitID { get; set; }
        /// <summary>
        /// OrgUnit Name
        /// </summary>
        [Required]
        public bool IsAllowAdmission { get; set; }


        /// <summary>
        /// Delete OrgUnit
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnit.Delete,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OrgUnitID", this.OrgUnitID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find OrgUnit
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnit.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OrgUnitID", this.OrgUnitID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    OrgUnit found = JsonSerializer.Deserialize<OrgUnit>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }
        /// <summary>
        /// Find OrgUnit against ParentUnitID
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable FindParent(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnit.FindParent, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ParentUnitID",this.ParentUnitID));
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }
        /// <summary>
        /// Get All OrgUnit
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnit.GetAll, con);
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
            if (this.OrgUnitID > 0)
            {
                this.Update(db);
                return this.OrgUnitID;
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnit.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OrgUnitTypeID", this.OrgUnitTypeID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ParentUnitID", this.ParentUnitID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsAllowAdmission", this.IsAllowAdmission));
                this.OrgUnitID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.OrgUnitID;
            }


        }

        /// <summary>
        /// Update OrgUnit
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnit.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OrgUnitID", this.OrgUnitID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@OrgUnitTypeID", this.OrgUnitTypeID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ParentUnitID", this.ParentUnitID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsAllowAdmission", this.IsAllowAdmission));
                cmd.ExecuteNonQuery();
            }
        }
    }
}
