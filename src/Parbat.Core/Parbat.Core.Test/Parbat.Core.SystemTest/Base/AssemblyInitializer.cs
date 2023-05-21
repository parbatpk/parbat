using Microsoft.Extensions.Configuration;

namespace Parbat.Core.SystemTest.Base
{
    [TestClass]
    public sealed class AssemblyInitializer
    {
        private static string _baseUrl = string.Empty;

        public static string BaseUrl { get => _baseUrl; private set => _baseUrl = value; }

        [AssemblyInitialize]
        public static void AssemblyInit(TestContext context)
        {
            var config = new ConfigurationBuilder().AddJsonFile("config.json");
            var configuration = config.Build();
            _baseUrl = configuration["BaseUrl"];
        }

        [AssemblyCleanup()]
        public static void AssemblyCleanup()
        {
            //Cleanup assembly
        }
    }
}
