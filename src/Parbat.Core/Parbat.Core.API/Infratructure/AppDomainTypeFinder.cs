using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;

namespace Parbat.Core.API.Infratructure
{
    /// <summary>
    /// A class that load the compulsory assembly to inject <c>ParbatServices</c>
    /// </summary>
    public class AppDomainTypeFinder : ITypeFinder
    {
        #region Ctor

        /// <summary>
        /// Initialize compulsory Assembly.
        /// </summary>
        /// <param name="assembly"></param>
        public AppDomainTypeFinder(Assembly assembly)
        {
            this.AssemblyCompulsoryToLoad = assembly.FullName.Split(',')[0];
        }

        #endregion

        /// <summary>
        /// Provide all classes with in a assembly.
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Type> GetServices()
        {
            IEnumerable<Type> services          = null;
            bool              IsServicesLoaded  = false;

            foreach (var assembly in App.GetAssemblies())
            {
                var assemblyName = assembly.FullName.Split(',')[0];

                if (assemblyName == AssemblyCompulsoryToLoad)
                {
                    services = assembly.GetTypes().
                        Where(type => !type.IsAbstract &&
                              type.IsClass &&
                              type.IsPublic &&
                              !type.GetInterfaces().Contains(typeof(ISerializable)));

                    IsServicesLoaded = true;
                }
            }

            if (IsServicesLoaded)
                return services;
            else
                throw new Exception("Unable to inject the services to http pipeline.");
        }


        #region Properties

        /// <summary>The app domain to look for types in.</summary>
        public virtual AppDomain App => AppDomain.CurrentDomain;

        /// <summary> </summary>
        public virtual string AssemblyCompulsoryToLoad { get; set; } = null;

        #endregion
    }
}
