using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;


using Parbat.Data;
using System.Data.Common;
using System.Text.Json;

namespace ParbatCore.Models
{
    /// <summary>
    /// Business Model of Faculty
    /// </summary>
    public class Faculty:IBussinesObject
    {
        /// <summary>
        /// Primary key
        /// </summary>
        public long FacultyID;
        /// <summary>
        /// Firstname 
        /// </summary>
        public string FirstName;
        /// <summary>
        /// Lastname
        /// </summary>
        public string LastName;

        /// <summary>
        /// Delete the Faculty member
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            if(this.Find(db) == null)
            {
                throw new BOException("Record doesn't Exist");
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Faculty.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "FacultyID", this.FacultyID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LastName", this.LastName));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }

        /// <summary>
        /// Find the faculty member
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Faculty.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "FacultyID", this.FacultyID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LastName", this.LastName));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    Faculty found = JsonSerializer.Deserialize<Faculty>(txt);
                    return found;
                }
                catch (JsonException je)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get all the faculty members
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Faculty.GetAll, con);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// Save the new Faculty member if exist
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            if(this.FacultyID > 0)
            {
                this.Update(db);
                return this.FacultyID;
            }
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Faculty.Insert,con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "FacultyID", this.FacultyID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LastName", this.LastName));
                this.FacultyID= Convert.ToInt64(cmd.ExecuteScalar());
                return this.FacultyID;
            }

        }

        /// <summary>
        /// Update the Faculty memeber if exist
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            if(this.Find(db) == null)
            {
                throw new BOException("Sorry, Record doesn't Exist");
            }

            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.ComponentType.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "FacultyID", this.FacultyID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LastName", this.LastName));
                cmd.ExecuteNonQuery();
            }
        }
    }
}
