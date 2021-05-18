using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Net;
using System.Net.Http;

using Microsoft.AspNetCore.TestHost;
using Microsoft.AspNetCore.Hosting;



namespace CoreServicesTest
{
    public class BaseTest
    {
        protected string _serviceUri = string.Empty;

        public HttpRequestMessage CreateGetMessage(string url)
        {
            return new HttpRequestMessage(HttpMethod.Get, url);
        }

        public HttpRequestMessage CreatePostMessage(string url)
        {
            return new HttpRequestMessage(HttpMethod.Post, url);
        }

        public HttpRequestMessage CreatePutMessage(string url)
        {
            return new HttpRequestMessage(HttpMethod.Put, url);
        }

        public HttpRequestMessage CreateDeleteMessage(string url)
        {
            return new HttpRequestMessage(HttpMethod.Delete, url);
        }

        public string GetUrl(string service)
        {
            return SetupAssemblyInitialize.BaseUrl + service;
        }
    }
}
