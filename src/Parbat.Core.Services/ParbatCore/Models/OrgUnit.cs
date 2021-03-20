using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Threading.Tasks;
using Parbat.Data;

namespace ParbatCore.Models
{
    public class OrgUnit : IBussinesObject
    {
        public int unitID { get; set; }
        public int? unitTypeID { get; set; }
        public int? parentTypeID { get; set; }
        public string unitName { get; set; }


        public int Save(IDatabase db)
        {
            DbConnection con = db.CreateConnection();
            DbCommand cmd = db.CreateSPCommand("spInsertOrgUnit", con);
            cmd.Parameters.Add(db.CreateParameter(cmd, "name", this.unitName));
            cmd.Parameters.Add(db.CreateParameter(cmd, "unitTypeID", this.unitTypeID));
            cmd.Parameters.Add(db.CreateParameter(cmd, "parentunitID", this.parentTypeID));

            con.Open();
            var result = cmd.ExecuteScalar();
            if (result != null)
                this.unitID = Convert.ToInt32(result);

            return this.unitID;
        }


        public IBussinesObject Find(IDatabase db)
        {
            //DbConnection con = db.CreateConnection();
            //DbCommand cmd = db.CreateSPCommand("spInsertOrgUnit", con);
            //cmd.Parameters.Add(db.CreateParameter(cmd, "name", this.unitName));
            //cmd.Parameters.Add(db.CreateParameter(cmd, "unitTypeID", this.unitTypeID));
            //cmd.Parameters.Add(db.CreateParameter(cmd, "parentunitID", this.parentTypeID));

            //con.Open();
            //DataSet result = cmd.();
            //if (result != null)
            //    this.unitID = Convert.ToInt32(result);

            return null;
        }


        public int Delete(IDatabase db)
        {
            DbConnection con = db.CreateConnection();
            DbCommand cmd = db.CreateSPCommand("spDeleteOrgUnit", con);
            cmd.Parameters.Add(db.CreateParameter(cmd, "id", this.unitID));

            con.Open();
            var result = cmd.ExecuteScalar();
            if (result != null)
                this.unitID = Convert.ToInt32(result);

            return this.unitID;
        }

        public int Update(IDatabase db)
        {
            DbConnection con = db.CreateConnection();
            DbCommand cmd = db.CreateSPCommand("spUpdateOrgUnit", con);
            cmd.Parameters.Add(db.CreateParameter(cmd, "id", this.unitID));
            cmd.Parameters.Add(db.CreateParameter(cmd, "name", this.unitName));

            con.Open();
            var result = cmd.ExecuteScalar();
            if (result != null)
                this.unitID = Convert.ToInt32(result);

            return this.unitID;
        }

        public DataSet GetAll(IDatabase db)
        {
            DataSet ds = new DataSet();
            return ds;
        }
    }
}
