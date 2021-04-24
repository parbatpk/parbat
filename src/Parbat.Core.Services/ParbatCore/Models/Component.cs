using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;
using Parbat.Data;
using System.Text.Json;
using System.Data;

namespace ParbatCore.Models
{
    /// <summary>
    /// Business Class for the Component
    /// </summary>
    public class Component:IBussinesObject
    {
        /// <summary>
        /// Primary key of Component Table
        /// </summary>
        public long ComponentID;
        /// <summary>
        /// Short Name of the Component For example University = Uni
        /// </summary>
        public string ShortName;
        /// <summary>
        /// Name of the component
        /// </summary>
        public string Name;
        /// <summary>
        /// Forign in the table of Component
        /// </summary>
        public int CurriculumID;
        /// <summary>
        /// No. of Credit Hours of the Component
        /// </summary>
        public int TotalCredit;
        /// <summary>
        /// No. of Couses in the Component
        /// </summary>
        public int TotalCourses;
        /// <summary>
        /// Limits of courses in the Component
        /// </summary>
        public bool IsLimitCourses;
        /// <summary>
        /// No. of CreditHrs in Component
        /// </summary>
        public bool IsLimitCreditHrs;
        /// <summary>
        /// Forign key in the table of Component
        /// </summary>
        public int ComponentTypeID;


        /// <summary>
        /// Use to save the Component
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            if(this.Find(db) !=null)
            {
                this.Update(db);
                return this.ComponentID;                
            }
            if(this.TotalCredit > 0 && this.TotalCourses > 0)
            {
                using (DbConnection connection = db.CreateConnection())
                {
                    connection.Open();
                    DbCommand cmd = db.CreateSPCommand(ProcedureNames.Component.Insert, connection);
                    cmd.Parameters.Add(db.CreateParameter(cmd, "ShortName", this.ShortName));
                    cmd.Parameters.Add(db.CreateParameter(cmd, "Name", this.Name));
                    cmd.Parameters.Add(db.CreateParameter(cmd, "CurriculumID", this.CurriculumID));
                    cmd.Parameters.Add(db.CreateParameter(cmd, "TotalCredit", this.TotalCredit));
                    cmd.Parameters.Add(db.CreateParameter(cmd, "TotalCourses", this.TotalCourses));
                    cmd.Parameters.Add(db.CreateParameter(cmd, "IsLimitCourses", this.IsLimitCourses));
                    cmd.Parameters.Add(db.CreateParameter(cmd, "IsLimitCreditHrs", this.IsLimitCreditHrs));
                    cmd.Parameters.Add(db.CreateParameter(cmd, "ComponentTypeID", this.ComponentTypeID));
                    cmd.ExecuteNonQuery();
                    connection.Close();
                }
                return this.ComponentID;
            }
            return this.ComponentID;
        }


        /// <summary>
        /// Use to Find the Component
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Component.Find, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "ComponentID", this.ComponentID));
                string txt = cmd.ExecuteScalar().ToString();
                connection.Close();
                try
                {
                    Component found = JsonSerializer.Deserialize<Component>(txt);
                    return found;
                }
                catch(Exception ex)
                {
                    throw new BOException("Result Not Found!" +ex.Message);
                }

            }
        }

        /// <summary>
        /// Delete the component From DB
        /// </summary>
        /// <param name="db"></param>
        public void Delete(IDatabase db)
        {
            if(this.Find(db) == null)
            {
                throw new BOException("Sorry, Result Not Found!");
            }
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Component.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "ComponentID", this.ComponentID));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }

        /// <summary>
        /// Use to Update the Component
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            if (this.Find(db) == null)
            {
                throw new BOException("Result Not Found!");
            }
            if(this.TotalCredit > 0 && this.TotalCourses > 0)
            {
                bool var  =  this.VerifyComponent(db, this.ComponentID);
                if(var)
                {
                    using (DbConnection connection = db.CreateConnection())
                    {
                        DbCommand cmd = db.CreateSPCommand(ProcedureNames.Component.Update, connection);
                        cmd.Parameters.Add(db.CreateParameter(cmd, "ComponentID", this.ComponentID));
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }

        /// <summary>
        /// Get all the Component from the DB Component
        /// </summary>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Component.GetAll, connection);
                DataSet ds = db.GetDataSet(cmd);
                connection.Close();
                return ds.Tables[0];
            }

        }




        /// <summary>
        /// Get the TotalCreditHrs and TotalCourses
        /// </summary>
        /// <returns></returns>
        public bool VerifyComponent(IDatabase db, long ComponentID)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Component.GetComponentSummary, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, "ComponentID", this.ComponentID));
                DataSet ds = db.GetDataSet(cmd);
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    if (Convert.ToInt32(ds.Tables[0].Rows[0]["TotalCourses"]) < this.TotalCourses &&
                        Convert.ToInt32(ds.Tables[0].Rows[0]["TotalCreditHrs"]) < this.TotalCredit)
                        return true;
                }
            }
            return false; 
        }
    }
}
