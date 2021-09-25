using System;
using System.Data;
using System.Data.Common;
using System.Text.Json;
using Parbat.Data;

namespace ParbatCore.Models
{
    /// <summary>
    /// This is the Business Model Classs interAct with the DB
    /// </summary>
    public class Batch:IBussinesObject
    {
        /// <summary>
        /// Primary key in Batch Table
        /// </summary>
        public long BatchID;
       
        /// <summary>
        /// Short name of the Batch
        /// </summary>
        public string ShortName;

        /// <summary>
        /// Name of the batch
        /// </summary>
        public string Name;

        /// <summary>
        /// Year of the admission
        /// </summary>
        public int AdmissionYear;

        /// <summary>
        /// Passing year
        /// </summary>
        public int GraduationYear;

        /// <summary>
        /// Forign key in the BatchTable
        /// </summary>
        public long OrgUnitID;

        /// <summary>
        /// Forign key in the BatchTable
        /// </summary>
        public long CurriculumID;

        /// <summary>
        /// Save the New batch if not Exist
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public long? Save(IDatabase db)
        {
            //If this is saved go and update it
            if(this.BatchID > 0)
            {
                this.Update(db);
                return this.BatchID;
            }
            //otherwise create new entery
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Batch.Insert, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.ShortName ,this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.Name, this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.AdmissionYear, this.AdmissionYear));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.GraduationYear, this.GraduationYear));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.OrgUnitID, this.OrgUnitID));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.CurriculumID, this.CurriculumID));
                this.BatchID = Convert.ToInt64(cmd.ExecuteScalar());
                connection.Close();
                return this.CurriculumID;
            }
        }

        /// <summary>
        /// Find the batch if it exist
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public IBussinesObject Find(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Batch.Find, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.BatchID, this.BatchID));
                string txt = cmd.ExecuteScalar().ToString();
                connection.Close();
                try
                {
                    Batch found = JsonSerializer.Deserialize<Batch>(txt);
                    return found;
                }
                catch (JsonException ex)
                {
                    throw new BOException("Result Not Found!" + ex.Message);
                }
            }
        }

        /// <summary>
        /// Delete the Batch if exist
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
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Batch.Delete, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.BatchID, this.BatchID));
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }

        /// <summary>
        /// Update the batch if exist
        /// </summary>
        /// <param name="db"></param>
        public void Update(IDatabase db)
        {
            //check record not exsit
            if (this.Find(db) == null)
            {
                throw new BOException("Record Not Found!");
            }
            //otherwise update it
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Batch.Update, connection);
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.BatchID, this.BatchID));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.ShortName, this.ShortName));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.Name, this.Name));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.AdmissionYear, this.AdmissionYear));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.GraduationYear, this.GraduationYear));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.OrgUnitID, this.OrgUnitID));
                cmd.Parameters.Add(db.CreateParameter(cmd, ProcedureNames.Batch.Params.CurriculumID, this.CurriculumID));
                cmd.ExecuteNonQuery();
                connection.Close();
            }

        }

        /// <summary>
        /// getAll the Batch 
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataTable GetAll(IDatabase db)
        {
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbCommand cmd = db.CreateSPCommand(ProcedureNames.Batch.GetAll, connection);
                DataSet ds = db.GetDataSet(cmd);
                connection.Close();
                return ds.Tables[0];
            }
        }


    }
}
