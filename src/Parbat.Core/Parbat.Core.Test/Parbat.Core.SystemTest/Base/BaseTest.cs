﻿using Parbat.Core.API.Client;

namespace Parbat.Core.SystemTest.Base
{
    public class BaseTest 
    {
        public readonly ParbatClient client;
        private protected string? _baseUrl;

        public BaseTest() 
        {
            this.CreateServiceUri();

            client = new ParbatClient(this._baseUrl, new HttpClient());
        }

        private void CreateServiceUri()
        {
            this._baseUrl = AssemblyInitializer.BaseUrl;

            if(string.IsNullOrEmpty(this._baseUrl))
            {
                throw new HttpRequestException("Please provide base URL");
            }
        }
    }
}