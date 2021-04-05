using Parbat.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace ParbatCore.Models
{
    /// <summary>
    /// Component Type Table
    /// </summary>
    public class ComponentType : IBussinesObject
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public long? ComponentTypeID { get; set; }

        /// <summary>
        /// Component Name
        /// </summary>
        [Required]
        public string Name { get; set; }
        /// <summary>
        /// Component IsRequired
        /// </summary>
        [Required]
        public bool IsRequired { get; set; }

        /// <summary>
        /// Delete Component Type
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
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentType.Delete,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentTypeID", this.ComponentTypeID));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Find Component Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentType.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentTypeID", this.ComponentTypeID));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    ComponentType found = JsonSerializer.Deserialize<ComponentType>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get All Component Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentType.GetAll, con);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// Save Component Type
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            // If this is already saved object then just update
            if (this.ComponentTypeID > 0)
            {
                this.Update(db);
                return this.ComponentTypeID;
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentType.Insert,
                    con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsRequired", this.IsRequired));
                this.ComponentTypeID = Convert.ToInt64(cmd.ExecuteScalar());

                return this.ComponentTypeID;
            }


        }

        /// <summary>
        /// Update Component Type
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
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentType.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "@Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@ComponentTypeID", this.ComponentTypeID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "@IsRequired", this.IsRequired));
                cmd.ExecuteNonQuery();
            }
        }

    }
}
