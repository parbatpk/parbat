﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using System.Data;
using Parbat.Data;

namespace ParbatCore.Models
{
    /// <summary>
    /// All business object should implement this interface
    /// </summary>
    public interface IBussinesObject
    {
        /// <summary>
        /// Save the current instances
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        long? Save(IDatabase db);

        /// <summary>
        /// Find on the basis of current instances
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        IBussinesObject Find(IDatabase db);

        /// <summary>
        /// Delete current instances
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        void Delete(IDatabase db);

        /// <summary>
        /// Update current instance
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        void Update(IDatabase db);

        /// <summary>
        /// return all records
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        DataTable GetAll(IDatabase db);
    }
}
