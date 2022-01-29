using Parbat.Data;
using System.Data.Common;

namespace Parbat.Core.SystemTest
{
    public class DatabaseHelper
    {
        public static DbCommand GetCommand(string query)
        {
            IDatabase instance = Database.Instance;
            DbCommand cmd = instance.CreateCommand(query);

            return cmd;
        }
    }
}
