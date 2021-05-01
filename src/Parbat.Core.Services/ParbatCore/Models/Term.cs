using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;

using System.Text.Json;
using Parbat.Data;
namespace ParbatCore.Models
{
    /// <summary>
    /// Business Model Of Term
    /// </summary>
    public class Term:IBussinesObject
    {
        /// <summary>
        /// Primary kery 
        /// </summary>
        public long TermID;
        /// <summary>
        /// term name
        /// </summary>
        public string Name;
        /// <summary>
        /// Nick name for example Maaz Khan == MK
        /// </summary>
        public string ShortName;
        /// <summary>
        /// Term is active status
        /// </summary>
        public bool IsActive;
        /// <summary>
        /// Start date of the term
        /// </summary>
        public DateTime StartDate;

        /// <summary>
        /// end date of the term
        /// </summary>
        public DateTime EndDate;


        /// <summary>
        /// Delete the term if Exsit
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            if(this.Find(db) == null)
            {
                throw new BOException("Sorry! Record Doesn't Exist");
            }

            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Term.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "TermID", this.TermID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "IsActive", this.IsActive));
                cmd.Parameters.Add(db.CreateParameter(cmd, "StartDate", this.StartDate));
                cmd.Parameters.Add(db.CreateParameter(cmd, "EndDate", this.EndDate));
                cmd.ExecuteNonQuery();
                connection.Close();

            }
        }

        /// <summary>
        /// Find the Term
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Term.Find, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "TermID", this.TermID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "IsActive", this.IsActive));
                cmd.Parameters.Add(db.CreateParameter(cmd, "StartDate", this.StartDate));
                cmd.Parameters.Add(db.CreateParameter(cmd, "EndDate", this.EndDate));
                string txt = Convert.ToString(cmd.ExecuteScalar());
                try
                {
                    Term found = JsonSerializer.Deserialize<Term>(txt);
                    return found;
                }
                catch (JsonException ex)
                {
                    return null;
                }
            }
        }

        /// <summary>
        /// Get all the term
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Term.GetAll, con);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// save the new term if not exist 
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            // If this is already saved object then just update
            if (this.TermID > 0)
            {
                this.Update(db);
                return this.TermID;
            }

            // otherwise create a new entry/record
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Term.Insert,con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "TermID", this.TermID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "IsActive", this.IsActive));
                cmd.Parameters.Add(db.CreateParameter(cmd, "StartDate", this.StartDate));
                cmd.Parameters.Add(db.CreateParameter(cmd, "EndDate", this.EndDate));
                this.TermID = Convert.ToInt64(cmd.ExecuteScalar());
                con.Close();
                return this.TermID;
            }
        }


        /// <summary>
        /// Update the Term is exist
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Record doesn't exist");
            }
            using (DbConnection con = db.CreateConnection())
            {
                con.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Term.Update, con);
                cmd.Parameters.Add(db.CreateParameter(cmd, "TermID", this.TermID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "IsActive", this.IsActive));
                cmd.Parameters.Add(db.CreateParameter(cmd, "StartDate", this.StartDate));
                cmd.Parameters.Add(db.CreateParameter(cmd, "EndDate", this.EndDate));
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}
