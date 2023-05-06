using System.Net;

var proxy = new WebProxy
{
    Address = new Uri($"http://110.49.34.126:32650"),
    BypassProxyOnLocal = false,
    UseDefaultCredentials = false,

    // *** These creds are given to the proxy server, not the web server ***
    //Credentials = new NetworkCredential(
    //    userName: proxyUserName,
    //    password: proxyPassword)
};

// *** Create a client handler that uses the proxy *** 
var httpClientHandler = new HttpClientHandler
{
    Proxy = proxy,
};

// *** Disable SSL verification *** 
httpClientHandler.ServerCertificateCustomValidationCallback = HttpClientHandler.DangerousAcceptAnyServerCertificateValidator;

// *** regular HTTP client object *** 
//var regularclient = new HttpClient();
//var regularresult = await regularclient.GetStringAsync("https://api.ipify.org/");
//Console.WriteLine(regularresult);

// *** Finally, create the HTTP client object using proxy server *** 
var client = new HttpClient(handler: httpClientHandler, disposeHandler: true);
var result = await client.GetStringAsync("https://api.ipify.org/");
Console.WriteLine(result);
