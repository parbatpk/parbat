using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;


using Parbat.Data;
using System.Data;
using System.Text.Json;



namespace ParbatCore.Models
{
    /// <summary>
    /// Business Class of Student
    /// </summary>
    public class Student:IBussinesObject
    {
        /// <summary>
        /// This is the Primary key of the Sdt table
        /// </summary>
        public long? StudentID;

        /// <summary>
        /// Std Identity
        /// </summary>
        public string Identifier;

        /// <summary>
        /// First Name of the student
        /// </summary>
        public string FirstName;

        /// <summary>
        /// Last Name of the student
        /// </summary>
        public string LastName;


        /// <summary>
        /// Save the New Std if not exist, else update it
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            if(this.StudentID > 0)
            {
                this.Update(db);
                return this.StudentID;
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Insert, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "Identifier", this.Identifier));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "SecondName", this.LastName));
                this.StudentID = Convert.ToInt32(cmd.ExecuteScalar());
                connection.Close();
                return this.StudentID;
            }
           
        }

        /// <summary>
        /// Find the exist std from Student table
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using(DbConnection connection = db.CreateConnection()){
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Find, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "Identifier", this.Identifier));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LastName", this.LastName));
                string txt = cmd.ExecuteScalar().ToString();
                connection.Open();
                try
                {
                    Student found = JsonSerializer.Deserialize<Student>(txt);
                    return found;
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex);
                    return null;
                }
            }
        }

        /// <summary>
        /// Delete the STD from Student Table if exist
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "Identifier", this.Identifier));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LastName", this.LastName));
                cmd.ExecuteNonQuery();
            }
        }

        /// <summary>
        /// Update the std id exist 
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Update, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "Identifier", this.Identifier));
                cmd.Parameters.Add(db.CreateParameter(cmd, "FirstName", this.FirstName));
                cmd.Parameters.Add(db.CreateParameter(cmd, "LastName", this.LastName));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }

        /// <summary>
        /// Get All the STD from Student Table
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using(DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.GetAll, connection);
                DataSet ds = db.GetDataSet(cmd);

                return ds.Tables[0];
            }
        }
    }
}
