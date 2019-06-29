# ASP.net Core From Zero to Mixin

asp-net-core-from-zero-to-mixin.md

1.   Zero - empty project

2.  Mixin

    *   Razor Pages

    *   MVC

    *   WebAPI

    *   static files

## Zero - Empty project

*   default

    *   Razor Pages

```
    <PackageReference Include="Microsoft.AspNetCore.App" />
    <PackageReference Include="Microsoft.AspNetCore.Razor.Design" Version="2.2.0" PrivateAssets="All" />
```

## Razor Pages

*   default

    *   ASP.net Core 2.2

    *   convention based
    
        *   folders

        *   `./Pages/`


install MVC via NuGet Package Manager:

Install-Package Microsoft.AspNetCore.Mvc -Version 2.0.0
Once installed, there are a couple of things we'll need to add to Startup.cs. Firstly, configure the app to use the MVC framework.

public void ConfigureServices(IServiceCollection services)
{
    services.AddMvc();
}
Secondly, configure the app to use the MVC request execution pipeline (routing), with a default route.

public void Configure(IApplicationBuilder app, IHostingEnvironment env)
{ 
    app.UseMvc(routes =>
    {
        routes.MapRoute(
            name: "default",
            template: "{controller=Home}/{action=Index}/{id?}");
    });
    // ...
}


    public class Startup
    {
        public void ConfigureServices(IServiceCollection services){
            services.AddMvc();
        }

        public void Configure(IApplicationBuilder app)
        {
            app.UseMvc();

            app.Run(context =>
            {
                return context.Response.WriteAsync("Hello world");
            });

        }
    }


add a Controller and a View!

Add a new folder called Controllers to the project and right click to add a Controller.

md Controllers
cd Controllers
NUL> HomeController.cs

Choose an empty MVC template and call it HomeController. The controller will be added with a default method called Index. Right click on View() and select AddView...


using Microsoft.AspNetCore.Mvc;

namespace CoreApp
{
    public class HomeController : Controller
    {
        [Route("home/index")]
        public IActionResult Index()
        {
            return Ok("Hello World from a controller");
        }
    }
}




ASP.NET Core doesn’t differentiate between MVC and Web API controllers, so you can return views or data using the same approach.

In this example you’ve returned a simple string. You can just as easily return an object as data.

using Microsoft.AspNetCore.Mvc;

namespace CoreApp
{
    public class HomeController : Controller
    {
        [Route("home/index")]
        public IActionResult Index()
        {
            return Ok("Hello World from a controller");
        }

        [Route("home/greet/{username}")]
        public IActionResult Greet(string username)
        {
            var greeting = new Greeting { Username = username };
            return Ok(greeting);
        }
    }
}


app.UseMvc(routes => {
 routes.MapRoute(
  name: "default",
  template: "{controller=Home}/{action=Index}/{id?}");
});


to return a view, that’s simple too.

Modify your controller’s index action to return a view instead.

public class HomeController : Controller
{
    [Route("home/index")]
    public IActionResult Index()
    {
        return View();
    }

    // -------
}
By convention, Core will look in a few places to find a view with the same name as the action, 
in this case Index.cshtml.





And finally
So just to wrap this up, let’s add some dynamic data to your view.

Modify your controller to return your greeting object.

public class HomeController : Controller
{
    // --------

    [Route("home/index/{username?}")]
    public IActionResult Index(string username = "you")
    {
      return View(new Greeting { Username = username });
    }

    // --------
}
A simple change to your view and your page will offer you a friendly greeting (defaulting to “you” if a name is not specified in the request).

<div>
    <h1>Hello @Model.Username from a view</h1>
</div>


https://jonhilton.net/2016/07/27/how-to-add-mvc-to-your-asp-net-core-web-application/
