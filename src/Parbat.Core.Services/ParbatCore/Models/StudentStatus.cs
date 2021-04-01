using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;


using Parbat.Data;
using System.Text.Json;

namespace ParbatCore.Models

{
    /// <summary>
    /// This is the Student Status Business Class 
    /// </summary>
    public class StudentStatus : IBussinesObject
    {
        /// <summary>
        /// This is the primary key in the StudentStatus Table
        /// </summary>
        public long StudentStatusID;

        /// <summary>
        /// Name Attribute in the StudentStatus Table
        /// </summary>
        public string Name;


        /// <summary>
        /// Delete the exist STDstaus from the StudentStatus table
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentStatus.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "StudentStatusID", this.StudentStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }

        /// <summary>
        /// Find the STD from the StudentStatus Class
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentStatus.Find, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "StudentStatusID", this.StudentStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                string txt = cmd.ExecuteScalar().ToString();
                try
                {
                    StudentStatus foud
                        = JsonSerializer.Deserialize<StudentStatus>(txt);
                    return foud;
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex);
                    return null;
                }
            }
            
        }

        /// <summary>
        /// Get All the STD from the StudentStatus Table
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using(DbConnection connection = db.CreateConnection())
            {
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentStatus.GetAll, connection);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }

        /// <summary>
        /// Save the StudentStatus in the StudentStatus Table
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            using(DbConnection connection = db.CreateConnection())
            {
                if(this.StudentStatusID > 0)
                {
                    this.Update(Database.Instance);
                    return this.StudentStatusID;
                }

                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentStatus.Insert, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "StudentStatusID", this.StudentStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                this.StudentStatusID = Convert.ToInt32(cmd.ExecuteScalar());
                connection.Close();
                return this.StudentStatusID;
            }            
        }

        /// <summary>
        /// Update the StudentStatus in the StudentStatus Table
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentStatus.Update, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "StudentStatusID", this.StudentStatusID));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            
        }
    }
}
