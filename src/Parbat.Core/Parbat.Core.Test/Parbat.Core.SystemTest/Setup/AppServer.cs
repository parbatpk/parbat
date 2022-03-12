//Create Test Server 
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.TestHost;
using Microsoft.Extensions.Configuration;

namespace Parbat.Core.SystemTest
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
                        .UseStartup<Parbat.Core.API.Startup>()
                        );
                }
                return _server;
            }
        }
    }
}
