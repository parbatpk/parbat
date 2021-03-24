using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.Data;
using System.Data.Common;
using System.ComponentModel.DataAnnotations;

using Parbat.Data;

namespace ParbatCore.Models
{
    /// <summary>
    /// The inerface to be implemented by each business object
    /// </summary>


    public class TestModel
    {
        /// <summary>
        /// University Id
        /// </summary>
        public int UniversityId;

        /// <summary>
        /// Univesity Name
        /// </summary>
        [Required]
        public string UniversityName { get; set; }

        public object Test()
        {
            DbConnection con = Database.Instance.CreateConnection();
            con.Open();
            DbCommand cmd2 = Database.Instance.Factory.CreateCommand();
            cmd2.CommandText = "select 1";
            //DbCommand cmd = Database.Instance.GetSPCommand("test", con);
            cmd2.Connection = con;
            var x = cmd2.ExecuteScalar();

            return x;

        }

        /// <summary>
        /// Rerturn list of universities
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public DataSet GetAllUniversities(IDatabase db)
        {
            DbConnection con = db.CreateConnection();
            con.Open();
            DbCommand cmd = db.CreateSPCommand("GetAllUniversities", con);
            DataSet r = db.GetDataSet(cmd);
            return r;

            DbDataAdapter adapter = db.Factory.CreateDataAdapter();
            DataSet result = new DataSet();
            adapter.SelectCommand = cmd;
            adapter.Fill(result);

            return result;


        }

        public void SimpleCommand()
        {
            // Simple Command
            DbConnection con = Database.Instance.CreateConnection();
            DbCommand cmd = Database.Instance.Factory.CreateCommand();
            cmd.Connection = con;
            con.Open();

            cmd.ExecuteNonQuery();

        }

        /// <summary>
        /// Saving the instance
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public TestModel Save(IDatabase db)
        {
            DbConnection con = db.CreateConnection();
            DbCommand cmd = db.CreateSPCommand("InsertUniversity", con);
            cmd.Parameters.Add(db.CreateParameter(cmd, "UniName", this.UniversityName));

            con.Open();
            var result = cmd.ExecuteScalar();
            if (result != null)
                this.UniversityId = Convert.ToInt32(result);

            return this;
        }

        public void CreateCommand()
        {
            DbConnection con = Database.Instance.CreateConnection();
            DbCommand cmd = Database.Instance.CreateCommand(con);
            con.Open();

            cmd.ExecuteNonQuery();
        }

        public void CreateSPCommand()
        {
            DbConnection con = Database.Instance.CreateConnection();
            DbCommand cmd = Database.Instance.CreateSPCommand("sp", con);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }

    
}
