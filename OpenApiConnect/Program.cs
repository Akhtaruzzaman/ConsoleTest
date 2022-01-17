using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Apex;
using OpenApiConnect;

namespace OpenApiConnect
{
    class Program
    {
        private static readonly HttpClient client = new HttpClient();
        static async Task Main(string[] args)
        {
            ApexApi apexclient = new("https://apex-api.satech-bd.com", client);
            var loginVm = new LoginVM
            {
                Email = "test@gmail.com",
                Password = "12345"
            };
            var res = await apexclient.AuthAsync(loginVm, System.Threading.CancellationToken.None);
            Console.WriteLine($"Token: {res.JwtToken}");
            Console.WriteLine();
            Console.WriteLine($"Refresh Token: {res.RefreshToken}");

            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", res.JwtToken);
            apexclient = new("https://apex-api.satech-bd.com", client);

            Console.WriteLine();
            var foods = await apexclient.FoodAsync(System.Threading.CancellationToken.None);
            foreach (var item in foods)
            {
                Console.WriteLine($"Item : {item.Name}");
            }


            Console.ReadKey();
        }
    }
}
