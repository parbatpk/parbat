using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

using Microsoft.OpenApi.Models;
using System.IO;
using System.Reflection;

using Parbat.Data;
using System.Text.Json;
using Newtonsoft.Json.Serialization;

namespace ParbatCore
{
    /// <summary>
    /// Defult startup class
    /// </summary>
    public class Startup
    {
        /// <summary>
        /// constructor
        /// </summary>
        /// <param name="configuration"></param>
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;

        }

        /// <summary>
        /// Configuration instance
        /// </summary>
        public IConfiguration Configuration { get; }

        /// <summary>
        /// This method gets called by the runtime. Use this method to add services to the container.
        /// </summary>
        /// <param name="services"></param>
        public void ConfigureServices(IServiceCollection services)
        {

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc(GlobalConstants.API_VER, new OpenApiInfo
                {
                    Version = GlobalConstants.API_VER,
                    Title = "Parbat",
                    Description = "An open source ERP for Universities",
                    TermsOfService = new Uri("https://parbat.irada.pk/terms"),
                    Contact = new OpenApiContact
                    {
                        Name = "Dr. Muhammad Qasim Pasta",
                        Email = "mqpasta@irada.pk",
                        Url = new Uri("https://twitter.com/mqpasta"),
                    },
                    License = new OpenApiLicense
                    {
                        Name = "The MIT License (MIT)",
                        Url = new Uri("http://opensource.org/licenses/mit-license.php"),
                    }
                });

                // Set the comments path for the Swagger JSON and UI.
                var xmlFile = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                var xmlPath = Path.Combine(AppContext.BaseDirectory, xmlFile);
                c.IncludeXmlComments(xmlPath);

            });

            services.AddCors(o => o.AddPolicy("MyPolicy", builder =>
            {
                builder.AllowAnyOrigin()
                       .AllowAnyMethod()
                       .AllowAnyHeader();
            }));

            services.AddMvc().
                SetCompatibilityVersion(CompatibilityVersion.Version_2_1).
                AddJsonOptions(o =>
                {
                    if (o.SerializerSettings.ContractResolver != null)
                    {
                        var castedResolver = o.SerializerSettings.ContractResolver
                            as DefaultContractResolver;
                        castedResolver.NamingStrategy = null;
                    }
                });
        }

        /// <summary>
        /// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        /// </summary>
        /// <param name="app"></param>
        /// <param name="env"></param>
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            app.UseCors("MyPolicy");
            app.MaintainCorsHeadersOnError();

            // Enable middleware to serve generated Swagger as a JSON endpoint.
            app.UseSwagger();

            // Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.),
            // specifying the Swagger JSON endpoint.
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "TEST API");
            });

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseMvc();


            var connectionString = Configuration["ConnectionStrings:db"];
            DatabaseType dbType = (DatabaseType)Enum.Parse(typeof(DatabaseType),
                Configuration["database:type"], true);
            Database.Instance.SetInstance(dbType, connectionString);

        }


    /// <summary>
    /// To avoid naming convention in json objects
    /// </summary>
    public class MyTransparentJsonNamingPolicy : JsonNamingPolicy
    {
        /// <summary>
        /// You can came up any custom transformation here, so instead just transparently
        /// pass through the original C# class property name, it is possible to explicit
        /// convert to PascalCase, etc:
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public override string ConvertName(string name)
        {
            return name;
        }
    }
}
