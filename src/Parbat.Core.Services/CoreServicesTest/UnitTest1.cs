using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Net;
using System.Net.Http;


using Microsoft.Extensions.Configuration;

using Microsoft.AspNetCore.TestHost;
using Microsoft.AspNetCore.Hosting;

using Parbat.Data;
using ParbatCore.Controllers;
using System.Threading.Tasks;

namespace CoreServicesTest
{
    [TestClass]
    public class UnitTest1
    {
        private readonly HttpClient _client;
        public UnitTest1()
        {
            var server = new TestServer(new WebHostBuilder()
                .ConfigureAppConfiguration((context, config) =>
               {
                   config.AddJsonFile("appsettings.json");
               })
                .UseEnvironment("Development")
                .UseStartup<ParbatCore.Startup>()
                );
            _client = server.CreateClient();

        }
        [TestMethod]
        public async Task TestMethod1()
        {
            var request = new HttpRequestMessage(new HttpMethod("GET"), "api/v1/Curriculum");

            var response = await _client.SendAsync(request);

            response.EnsureSuccessStatusCode();
            Assert.AreEqual(HttpStatusCode.OK, response.StatusCode);

        }
    }
}
