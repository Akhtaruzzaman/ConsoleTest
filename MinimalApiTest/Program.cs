var builder = WebApplication.CreateBuilder(new WebApplicationOptions
{
    ApplicationName = typeof(Program).Assembly.FullName,
    ContentRootPath = Directory.GetCurrentDirectory(),
    EnvironmentName = Environments.Staging,
    WebRootPath = "customwwwroot"
});


var app = builder.Build();

app.Logger.LogInformation("The app started");
app.Logger.LogInformation($"Application Name: {builder.Environment.ApplicationName}");
app.Logger.LogInformation($"Environment Name: {builder.Environment.EnvironmentName}");
app.Logger.LogInformation($"ContentRoot Path: {builder.Environment.ContentRootPath}");
app.Logger.LogInformation($"WebRootPath: {builder.Environment.WebRootPath}");

app.MapGet("/inlinehandler", () => "This is an inline lambda");
var handler = () => "This is a lambda variable";
app.MapGet("/lemdahandler", handler);

string LocalFunction() => "This is local function";
app.MapGet("/localfunction", LocalFunction);

var home_controller = new HomeController();
app.MapGet("/", home_controller.Index);


app.Run();