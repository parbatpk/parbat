﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.Data.Common;
using System.ComponentModel.DataAnnotations;

using Parbat.Data;

namespace ParbatCore.Models
{
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

    public class Student
    {
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }

        public void Save(IDatabase db)
        {
            DbConnection con = db.CreateConnection();
            DbCommand cmd = db.CreateSPCommand("InserStudent", con);
            cmd.Parameters.Add(db.CreateParameter(cmd, "FName", this.FirstName));
            cmd.Parameters.Add(db.CreateParameter(cmd, "LName", this.LastName));

            con.Open();
            cmd.ExecuteNonQuery();
        }
    }
}
