# `HttpClient`

httpclient.md 

But `HttpClient` is different. Although it implements the IDisposable interface it is actually a shared object. 
This means that under the covers it is reentrant) and thread safe. Instead of creating a new instance of 
`HttpClient` for each execution you should share a single instance of `HttpClient` for the entire lifetime of the 
application. Let’s look at why.

*   designed to be re-used for 

    *   multiple calls
    
    *   Even across multiple threads. 
    
*   `HttpClientHandler` has data intended to be re-used across calls:

    *   Credentials and 
    
    *   Cookies

    *   DefaultRequestHeaders
    
*   `HttpClient` instance requires re-setting up all of that stuff 


Another major benefit of `HttpClient` is the ability to add HttpMessageHandlers into the request/response pipeline 
to apply cross cutting concerns. These could be for logging, auditing, throttling, redirect handling, offline handling, 
capturing metrics. All sorts of different things. If a new `HttpClient` is created on each request, then all of these 
message handlers need to be setup on each request and somehow any application level state that is shared between 
requests for these handlers also needs to be provided.

The more you use the features of `HttpClient`, the more you will see that reusing an existing instance makes sense.

However, the biggest issue, in my opinion is that when a `HttpClient` class is disposed, it disposes `HttpClientHandler`, 
which then forcibly closes the TCP/IP connection in the pool of connections that is managed by ServicePointManager. 
This means that each request with a new `HttpClient` requires re-establishing a new TCP/IP connection.

From my tests, using plain HTTP on a LAN, the performance hit is fairly negligible. I suspect this is because there is 
an underlying TCP keepalive that is holding the connection open even when `HttpClientHandler` tries to close it.

On requests that go over the internet, I have seen a different story. I have seen a 40% performance hit due to having 
to re-open the request every time.

I suspect the hit on a HTTPS connection would be even worse.

My advice is to keep an instance of `HttpClient` for the lifetime of your application for each distinct API that you 
connect to.


*   implements IDisposable - this is a trap!

    *   devs normally do by creating an instance and placing it inside of a using() statement. 
    
    *   can bring server to its knees
    
    *   not just the app. 
    
    *   explanation
    
        *   `HttpClient` instance opens a port on the server. 
        
        *   Because of non-deterministic finalization of GC and 
        the fact that you are working with computer resources that span across multiple OSI layers, 
        closing network ports can take a while. 
        In fact Windows OS itself can take up to 20 secs to close a port (per Microsoft). 
        ending up in opening ports faster than they could be closed - server port exhaustion could hammer
         the CPU to 100%. 
         
         fix is to change the HttpClient to a static instance which solved the problem. 
         
         it is a disposable resource, but any overhead is vastly outweighed by the difference in 
         performance. 
         
         *  advice: do some load testing to see how app behaves.

WebAPI Guidance page for documentation and example at 

*   https://www.asp.net/web-api/overview/advanced/calling-a-web-api-from-a-net-client

Special attention to this citation:

    `HttpClient` is intended to be instantiated once and re-used throughout the life of an application. 
    Especially in server applications, creating a new `HttpClient` instance for every request will 
    exhaust the number of sockets available under heavy loads. 
    This will result in SocketException errors.

If you find that you need to use a static `HttpClient` with different headers, base address, etc. what you will 
need to do is to create the HttpRequestMessage manually and set those values on the HttpRequestMessage. Then, 
use the `HttpClient`:SendAsync(HttpRequestMessage requestMessage, ...)



If we keep a shared handler, do we still need to take care of stale DNS issue? – shanti May 24 at 11:22
@shanti reusing the handler does not resolve the DNS issue. Have to do something like this byterot.blogspot.com/2016/07/singleton-httpclient-dns.html to resolve DNS – odyth Sep 4 at 18:51
Here is a gist that gives you a reusable http client along with time outs and exponential back off 
gist.github.com/odyth/3a5d3d72cc98f280f213005ec9a08de9 

*   https://stackoverflow.com/questions/22560971/what-is-the-overhead-of-creating-a-new-httpclient-per-call-in-a-webapi-client

*   https://aspnetmonsters.com/2016/08/2016-08-27-httpclientwrong/

*   https://github.com/mspnp/performance-optimization

*  https://github.com/davidsonfellipe/awesome-wpo

*   https://www.aspnetmonsters.com/2016/08/2016-08-27-httpclientwrong/
