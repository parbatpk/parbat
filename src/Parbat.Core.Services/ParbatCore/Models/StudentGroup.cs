using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace ParbatCore.Models
{
    /// <summary>
    /// Handling all the business logic of Student group
    /// </summary>
    public class StudentGroup:IBussinesObject
    {
        /// <summary>
        /// Primary key of StudenGroup Table
        /// </summary>
        public long StudenGroupID;

        /// <summary>
        /// ShortName of StudentGroup
        /// </summary>
        public string ShortName;


        /// <summary>
        /// Name of StudentGroup
        /// </summary>
        public string Name;

        
        /// <summary>
        /// Is StudentGroup Active or Not
        /// </summary>
        public bool IsActive;


        /// <summary>
        /// Save the StudentGroup in StudentGroup Table
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            if (this.Find(db) != null)
            {
                this.Update(db);
                return this.StudenGroupID;
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentGroup.Insert, connection);

                cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, "IsActive", this.IsActive));

                this.StudenGroupID = Convert.ToInt64(cmd.ExecuteScalar());
                connection.Close();

                return this.StudenGroupID;
            }
        }

        /// <summary>
        /// Find the StudentGroup
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentGroup.Find, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "StudentGroupID", this.StudenGroupID));
                string txt = cmd.ExecuteScalar().ToString();
                connection.Close();
                try
                {
                    StudentGroup found = JsonSerializer.Deserialize<StudentGroup>(txt);
                    return found;
                }
                catch (JsonException ex)
                {
                    throw new BOException("Result Not Found!" + ex.Message);
                }

            }
        }

        /// <summary>
        /// Delete the StudentGroup
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Sorry, Result Not Found!");
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentGroup.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "StudentGroupID", this.StudenGroupID));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }


        /// <summary>
        /// Update the StudentGoup
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
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentGroup.Update, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "StudentGroupID", this.StudenGroupID));
                cmd.ExecuteNonQuery();
                connection.Close();
            }

        }

        /// <summary>
        /// Return all the students
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.StudentGroup.GetAll, connection);
                DataSet ds = db.GetDataSet(cmd);
                connection.Close();
                return ds.Tables[0];
            }
        }
    }
}
