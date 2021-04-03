using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ParbatCore.Models
{
    public class BOException:Exception
    {
        public BOException(string errorMessage) : base(errorMessage)
        {

        }

        public BOException(string errorMessage, Exception innerException) : base(errorMessage, innerException)
        {

        }
    }
}
