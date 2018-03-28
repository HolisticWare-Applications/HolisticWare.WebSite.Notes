# Blazor = Browser + Razor


# Blazor

blazor.md

## Intro

*   based on Web Assembly (wasm)

    *   https://caniuse.com/#feat=wasm
    
https://www.jerriepelser.com/blog/getting-started-with-blazor/

https://learn-blazor.com/


The app includes 

*   Blazor’s JavaScript (blazor.js)

    *   It uses Mono’s JavaScript library (mono.js) to bootstrap the Mono runtime (mono.wasm) 
        in WebAssembly. 

*   It then loads the app’s DLL (.dll) and 

*   the DLLs of the .NET Framework.

*   Blazor uses Mono’s IL Linker to reduce the size of the app 

    Output window during build


Blazor is not just a new Silverlight. The biggest difference is that it does not require a plugin


Unlike former platforms like Silverlight, it does not bring its own rendering engine to paint pixels on the screen.

Blazor uses the Browser’s DOM to display data.

C# code running in WebAssembly cannot access the DOM directly. It has to go through JavaScript.

The C#-part of Blazor creates a Render Tree which is a tree of UI items.

The render tree is passed from WebAssembly to the Rendering in the JavaScript-part of Blazor. It executes the corresponding DOM changes.

Whenever the user interacts with the DOM (e.g. mouse click, enter text, etc.), the JavaScript-part of Blazor dispatches an event to C#.

The event is processed by the C#-code of the web app.

If the DOM changes, a Render Batch with all the UI tree differences (not the entire UI tree) is built in C# and given to a JavaScript Blazor method that applies the DOM changes.


Because Blazor is using the regular browser DOM, all usual DOM mechanisms including CSS work keep working.



Hosting a Blazor app should be trivial,
bunch of static files (e.g. HTML, JavaScript, DLLs, etc.) so 
can put it on any static web server and we are done. 
This idea is not wrong. If you try it, basic tests will succeed. 
However, you will recognize problems with routing once you look closer.


Dockerfile for statically hosting Blazor in nginx could look like this:

FROM nginx:alpine
COPY ./bin/Debug/netstandard2.0/dist /usr/share/nginx/html/


However, if you enter http://localhost:8082/Page1 manually in your browser’s address 
bar, you will get a 404 not found error.

The reason is the difference between client- and server-side routing. If you load your 
Blazor app without a route, the webserver will send your index.html page to the browser 
client. It contains Blazor’s JavaScript and everything is fine. The JavaScript code 
handles routing on the client-side. If you try to navigate directly to a route in 
your Blazor app, the URL (e.g. http://localhost:8082/Page1) is sent to the server and 
it does not know what Page1 means. Therefore, you see a 404 error.

have to configure our static web server to always deliver index.html if it receives a 
URL that will be handled by Blazor’s router on the client. Once index.html is on the 
client, it’s referenced JavaScript/C# code will care for proper processing of the route.

The nginx server mentioned above allows to define such rules in its config files. 
Here is a simplified example for an nginx.conf file that sends index.html whenever it 
cannot find a corresponding file on disk.

events { }
http {
    server {
        listen 80;

        location / {
            root /usr/share/nginx/html;
            try_files $uri $uri/ /index.html =404;
        }
    }
}

FROM nginx:alpine
COPY ./bin/Debug/netstandard2.0/dist /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf


## References / Links

*   https://github.com/aspnet/Blazor/tree/release/0.1.0/samples

*   https://stackoverflow.com/search?q=blazor

*   https://visualstudiomagazine.com/articles/2018/03/23/blazor-alpha.aspx

*   http://blog.tdwright.co.uk/2018/03/05/blazor-and-net-core-hosting-the-futures-bright/

*   http://www.i-programmer.info/news/89-net/11539-blazor-net-in-the-browser.html

*   https://visualstudiomagazine.com/articles/2017/08/09/blazor.aspx

*   http://blog.tdwright.co.uk/2018/03/25/getting-started-with-blazor-my-red-pill-moment/

*   https://www.itwriting.com/blog/10197-what-the-blazor-after-silverlight-net-in-the-browser-reappears-by-another-route.html

*   https://blogs.msdn.microsoft.com/webdev/2018/02/06/blazor-experimental-project/

*   http://blog.stevensanderson.com/2018/02/06/blazor-intro/
