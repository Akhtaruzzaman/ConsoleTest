using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace AzureFunctionApp
{
    public static class ReceiveRequest
    {
        [FunctionName("ReceiveRequest")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", "post", Route = null)] HttpRequest req,
            [Queue("OutputQueue"), StorageAccount("AzureWebJobsStorage")] ICollector<string> msg,
            ILogger log)
        {
            log.LogInformation("C# HTTP trigger function processed a request.");

            string name = req.Query["name"];
            string address = req.Query["address"];

            string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
            dynamic data = JsonConvert.DeserializeObject(requestBody);
            name = name ?? data?.name;
            address = address ?? data?.address;

            TestClass test = new TestClass(name, address);

            var conn = System.Environment.GetEnvironmentVariable("ConnectionString", EnvironmentVariableTarget.Process);
            msg.Add($"Name Passed is {name}");
            msg.Add($"Class Object is {JsonConvert.SerializeObject(test)}");
            string responseMessage = string.IsNullOrEmpty(name)
                ? "This HTTP triggered function executed successfully. Pass a name in the query string or in the request body for a personalized response."
                : $"Hello, {name}. This HTTP triggered function executed successfully. and Con {conn}";

            return new OkObjectResult(responseMessage);
        }
    }
}
