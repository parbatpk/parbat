using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Net.Http;
using System.Text;

namespace Parbat.Core.Web.Classes
{
    public class HttpBase
    {
        protected string _serviceUri = string.Empty;

        public static HttpRequestMessage CreateGetMessage(string url)
        {
            return new HttpRequestMessage(HttpMethod.Get, url);
        }

        public static HttpRequestMessage CreatePostMessage(string url,string rawdata)
        {
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            HttpRequestMessage msg = new HttpRequestMessage(HttpMethod.Post, url)
            {
                Content = inputData
            };
            return msg;
        }

        public static HttpRequestMessage CreatePutMessage(string url,string rawdata)
        {
            var inputData = new StringContent(rawdata, Encoding.Default, "application/json");
            HttpRequestMessage msg = new HttpRequestMessage(HttpMethod.Post, url)
            {
                Content = inputData
            };
            return msg;
        }

        public static HttpRequestMessage CreateDeleteMessage(string url)
        {
            return new HttpRequestMessage(HttpMethod.Delete, url);
        }

        public static string GetUrl(string service)
        {
            return Global.BaseUrl + service;
        }
    }
}
