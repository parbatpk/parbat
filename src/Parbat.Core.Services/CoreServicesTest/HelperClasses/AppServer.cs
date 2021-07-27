using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Microsoft.Extensions.Configuration;
using System.Text.Json;
using System.Text.Json.Serialization;

using Microsoft.AspNetCore.TestHost;
using Microsoft.AspNetCore.Hosting;


namespace CoreServicesTest
{
    public class AppServer
    {
        private static TestServer _server;

        private AppServer()
        {

        }

        public static TestServer Instance
        {
            get
            {
                if (_server is null)
                {
                    _server = new TestServer(new WebHostBuilder()
                        .ConfigureAppConfiguration((context, config) =>
                        {
                            config.AddJsonFile("appsettings.Test.json");
                        })
                        .UseEnvironment("Development")
                        .UseStartup<ParbatCore.Startup>()
                        );
                }
                return _server;
            }
        }
    }
}
