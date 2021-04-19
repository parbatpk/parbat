using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Microsoft.Extensions.Configuration;
using System.Text.Json;
using System.Text.Json.Serialization;

using Microsoft.AspNetCore.TestHost;
using Microsoft.AspNetCore.Hosting;

using ParbatCore.Models;


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
            var request = new HttpRequestMessage(HttpMethod.Post, "api/v1/Curriculum");

            Curriculum c = new Curriculum()
            {
                CurriculumID = null,
                CurriculumTypeID = 1,
                Name = "Curriculum 1",
                ShortName = "CUR1",
                OwnerUnitID = 1,
                IsLimitCourses = false,
                IsLimitCreditHrs = false,
                TotalCourses = 10,
                TotalCreditHrs = 20
            };

            var content = JsonSerializer.Serialize<Curriculum>(c);
            request.Content = new StringContent(content);


            var response = await _client.SendAsync(request);

            //response.EnsureSuccessStatusCode();
            Assert.AreEqual(HttpStatusCode.OK, response.StatusCode);

        }
    }
}
