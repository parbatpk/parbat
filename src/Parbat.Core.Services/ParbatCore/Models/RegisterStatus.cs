using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


using Parbat.Data;
using System.Data.Common;
using System.Text.Json;
using System.Data;

namespace ParbatCore.Models
{
    /// <summary>
    /// Business Model Class of RegisterStatus
    /// </summary>
    public class RegisterStatus:IBussinesObject
    {
        /// <summary>
        /// Primary key of RegSatus
        /// </summary>
        public long RegisterStatusID;
        /// <summary>
        /// ShortName of RegStatus
        /// </summary>
        public string ShortName;

        /// <summary>
        /// Save the RegisterStatus if not Exist else update
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            if(this.RegisterStatusID >= 0)
            {
                this.Update(db);
                return this.RegisterStatusID;
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.RegisterStatus.Insert,connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "RegisterStatusID", this.RegisterStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                this.RegisterStatusID = Convert.ToInt64(cmd.ExecuteScalar());
                connection.Close();
                return this.RegisterStatusID;
            }

        }

        /// <summary>
        /// FinD regStatus
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.RegisterStatus.Find, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "RegisterStatusID", this.RegisterStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                string txt = cmd.ExecuteScalar().ToString();
                connection.Close();
                try
                {
                    RegisterStatus found = JsonSerializer.Deserialize<RegisterStatus>(txt);
                    return found;
                }
                catch
                {
                    return null;
                }
            }

        }


        /// <summary>
        /// Delete the RegStatus
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.RegisterStatus.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "RegisterStatusID", this.RegisterStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            
        }

        /// <summary>
        /// Update the RegStatus if exists
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.RegisterStatus.Update, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "RegisterStatusID", this.RegisterStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }

        
        /// <summary>
        /// Get All the RegStatus
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.RegisterStatus.GetAll, connection);
                DataSet ds = db.GetDataSet(cmd);
                connection.Close();
                return ds.Tables[0];
            }

        }
    }
}
