using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;

using Parbat.Data;
using System.ComponentModel.DataAnnotations;
using System.Text.Json;
using System.Data;

namespace ParbatCore.Models
{
    /// <summary>
    /// Busniess class of OrgUnitType
    /// </summary>
    public class OrgUnitType: IBussinesObject
    {
        /// <summary>
        /// This is the primary key
        /// </summary>
        public long OrgUnitTypeID;

        /// <summary>
        /// ShortName  of OrgUnitType
        /// </summary>
        [Required]
        public string ShortName;
        /// <summary>
        /// FullName of OrgUnitType
        /// </summary>
        [Required]
        public string Name;


        /// <summary>
        /// To save the New OrgUnitType or If Exit than Update it
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            if(this.OrgUnitTypeID > 0)
            {
                this.Update(db);
                return this.OrgUnitTypeID;
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnitType.Insert, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd,"ShortName",this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                this.OrgUnitTypeID = Convert.ToInt32(cmd.ExecuteScalar());
                connection.Close();
                return this.OrgUnitTypeID;
            }
        }


        /// <summary>
        /// For finding some OrgUnitType 
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnitType.Find, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "OrgUnitTypeID", this.OrgUnitTypeID));
                string txt = cmd.ExecuteScalar().ToString();
                connection.Close();
                try
                {
                    OrgUnitType found = JsonSerializer.Deserialize<OrgUnitType>(txt);
                    return found;
                }
                catch(Exception ex)
                {
                    throw new  BOException("Not Found" + ex.Message);
                }
            }
        }

        
        /// <summary>
        /// For deleting the Exit OrgUnitType
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            if(this.Find(db) == null)
            {
                throw new BOException("Result Not Found!");
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnitType.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.ExecuteNonQuery();
                connection.Close();
            }

        }

        
        /// <summary>
        /// Update the OrgUnitType 
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Result Not Found!");
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnitType.Update,connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "OrgUnitType", this.OrgUnitTypeID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.ExecuteNonQuery();
                connection.Close();
            }

        }


        /// <summary>
        /// Get the all OrgUnitType
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using(DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.OrgUnitType.GetAll,connection);
                DataSet ds = db.GetDataSet(cmd);
                connection.Close();

                return ds.Tables[0];
            }


        }



    }
}
