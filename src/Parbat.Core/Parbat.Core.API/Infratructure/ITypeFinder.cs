using System;
using System.Collections.Generic;
using System.Reflection;

namespace Parbat.Core.API.Infratructure
{
    /// <summary>
    /// Provide all <c>Parbat</c> serevices.
    /// </summary>
    public interface ITypeFinder
    {
        /// <summary>
        /// Provide all classes with in a assembly.
        /// </summary>
        /// <returns></returns>
        IEnumerable<Type> GetServices();
    }
}
