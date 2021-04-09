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
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;

        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "ToDo API",
                    Description = "A simple example ASP.NET Core Web API",
                    TermsOfService = new Uri("https://example.com/terms"),
                    Contact = new OpenApiContact
                    {
                        Name = "Shayne Boyer",
                        Email = string.Empty,
                        Url = new Uri("https://twitter.com/spboyer"),
                    },
                    License = new OpenApiLicense
                    {
                        Name = "Use under LICX",
                        Url = new Uri("https://example.com/license"),
                    }
                });

                // Set the comments path for the Swagger JSON and UI.
                var xmlFile = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                var xmlPath = Path.Combine(AppContext.BaseDirectory, xmlFile);
                Console.WriteLine(xmlPath);
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

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            app.UseCors("MyPolicy");

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


            //var connectionString = Configuration["ConnectionStrings:db"];
            //DatabaseType dbType = (DatabaseType)Enum.Parse(typeof(DatabaseType),
            //    Configuration["database:type"], true);
            //Database.Instance.SetInstance(dbType, connectionString);

        }


    }

    public class MyTransparentJsonNamingPolicy : JsonNamingPolicy
    {
        // You can came up any custom transformation here, so instead just transparently
        // pass through the original C# class property name, it is possible to explicit
        // convert to PascalCase, etc:
        public override string ConvertName(string name)
        {
            return name;
        }
    }
}
