using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using Newtonsoft.Json;
using Parbat.Core.Web.Classes;
using JsonSerializer = System.Text.Json.JsonSerializer;
using System.Net;
using System.IO;
using System.Text;

namespace Parbat.Core.Web.Classes
{
    public class HttpHelper
    {
        public static T Get<T>(string url)
        {
            url = HttpBase.GetUrl(url);
            var request = HttpBase.CreateGetMessage(url);
            var response = Send(request);
            Task<string> content = response.Content.ReadAsStringAsync();
            var data = JsonConvert.DeserializeObject<T>(content.Result);

            return data;

        }
        public static string Get(string url)
        {
            url = HttpBase.GetUrl(url);
            var request = HttpBase.CreateGetMessage(url);
            var response = Send(request);
            string content = response.Content.ReadAsStringAsync().Result;

            return content;

        }
        public static T Post<T>(string url, object o)
        {
            url = HttpBase.GetUrl(url);

            var rawdata = JsonSerializer.Serialize<object>(o);
            var msg = HttpBase.CreatePostMessage(url, rawdata);
            var response = Send(msg);
            string content = response.Content.ReadAsStringAsync().Result;
            var data = JsonConvert.DeserializeObject<T>(content);

            return data;

        }
        public static string Post(string url, object o)
        {
            url = HttpBase.GetUrl(url);

            var rawdata = JsonSerializer.Serialize<object>(o);
            var msg = HttpBase.CreatePostMessage(url, rawdata);
            var response = Send(msg);
            string content = response.Content.ReadAsStringAsync().Result;

            return content;
        }
        public static T Put<T>(string url, object o)
        {
            url = HttpBase.GetUrl(url);
            var rawdata = JsonSerializer.Serialize<object>(o);
            var msg = HttpBase.CreatePutMessage(url, rawdata);
            var response = Send(msg);
            string content = response.Content.ReadAsStringAsync().Result;
            var data = JsonConvert.DeserializeObject<T>(content);

            return data;
        }
        public static string Put(string url, object o)
        {
            url = HttpBase.GetUrl(url);
            var rawdata = JsonSerializer.Serialize<object>(o);
            var msg = HttpBase.CreatePutMessage(url, rawdata);
            var response = Send(msg);
            string content = response.Content.ReadAsStringAsync().Result;

            return content;

        }
        public static string Delete(string url, int id)
        {
            url += id;

            return Delete(url);
        }
        public static string Delete(string url)
        {
            url = HttpBase.GetUrl(url);
            var request = HttpBase.CreateDeleteMessage(url);
            var response = Send(request);
            string content = response.Content.ReadAsStringAsync().Result;

            return content;

        }

        public static HttpResponseMessage Send(HttpRequestMessage request)
        {

            using (var client = new HttpClient())
            {
                var response = client.Send(request);

                if (response.StatusCode == HttpStatusCode.OK ||
                    response.StatusCode == HttpStatusCode.Created ||
                    response.StatusCode == HttpStatusCode.Accepted)
                {
                    return response;
                }

                throw new Exception(response.Content.ReadAsStringAsync().Result);
            }

        }
    }
}
