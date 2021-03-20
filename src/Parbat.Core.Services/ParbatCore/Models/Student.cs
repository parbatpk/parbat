using Parbat.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Data.Common;

namespace ParbatCore.Models
{
    /// <summary>
    /// This is an student object
    /// </summary>
    public class Student:IBussinesObject
    {
        /// <summary>
        /// This is the stdID
        /// </summary>
        public int stdID { get; set; }
        /// <summary>
        /// This is the First Name of the student
        /// </summary>
        public string stdName { get; set; }
        /// <summary>
        /// This is the unitID
        /// </summary>
        public int unitID { get; set;}
        /// <summary>
        ///  This is the date of the admission
        /// </summary>
        public DateTime admissionDate { get; set; }
        /// <summary>
        /// This is the StatusID, shows the status of the student
        /// </summary>
        public int statusID { get; set; }
        /// <summary>
        /// This is the updatedDate of the student
        /// </summary>
        public DateTime updateDateTime { get; set; }

        /// <summary>
        /// Save the current instances
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public int Save(IDatabase db)
        {
            int id = -1;
            DbConnection connection = db.CreateConnection();
            DbCommand cmd = db.CreateSPCommand(ProcedureNames.Student.Search, connection);
            cmd.Parameters.Add(db.CreateParameter(cmd, "stdName", this.stdName));
            try
            {
                connection.Open();
                id = Convert.ToInt32(cmd.ExecuteScalar());
                return id;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            return id;
        }

        /// <summary>
        /// Find on the basis of current instances
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            return (new Student());
        }

        /// <summary>
        /// Delete current instances
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public int Delete(IDatabase db)
        {
            return 0;
              
        }

        /// <summary>
        /// Update current instance
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public int Update(IDatabase db)
        {
            return 0;
        }

        /// <summary>
        /// return all records
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataSet GetAll(IDatabase db)
        {
            return (new DataSet());
        }

    }
}
