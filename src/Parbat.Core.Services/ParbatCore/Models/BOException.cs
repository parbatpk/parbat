using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ParbatCore.Models
{
    /// <summary>
    /// Our BOException Class 
    /// </summary>
    public class BOException:Exception
    {
        /// <summary>
        /// Constractor
        /// </summary>
        /// <param name="errorMessage"></param>
        public BOException(string errorMessage) : base(errorMessage)
        {

        }

        /// <summary>
        /// Constractor
        /// </summary>
        /// <param name="errorMessage"></param>
        /// <param name="innerException"></param>
        public BOException(string errorMessage, Exception innerException) : base(errorMessage, innerException)
        {

        }
    }
}
