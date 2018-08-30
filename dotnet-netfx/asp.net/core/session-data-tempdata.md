# Session Data

session-data-tempdata.md

Persisting data accross requests



use Session or TempData to Persist data between two requests like this simple example: 

## Session:

public ActionResult SampleBook5()
{
    Book book = new Book
    {
        ID = 1,
        BookName = "Sample Book",
        Author = "Sample Author",
        ISBN = "Not available"
    };

    Session["BookData"] = book;
    return RedirectToAction("SampleBook6");
}

public ActionResult SampleBook6()
{
    Book book = Session["BookData"] as Book;

    return View(book);
}

## TempData:

public ActionResult SampleBook3()
{
    Book book = new Book
    {
        ID = 1,
        BookName = "Sample Book",
        Author = "Sample Author",
        ISBN = "Not available"
    };

    TempData["BookData"] = book;
    return RedirectToAction("SampleBook4");
}

public ActionResult SampleBook4()
{
    Book book = TempData["BookData"] as Book;

    return View(book);
}

The main difference between using Session and TempData is that it is possible to use session variables 
to persist  the data for a complete user session On the other hand TempData is used to pass some data 
from one action method to another action method

TempData is session, so they're not entirely different. However, the distinction is easy to understand, 
because TempData is for redirects, and redirects only. So when user sets some message in TempData and then 
redirect, TempData is used correctly.

However, using Session for any kind of security is extremely dangerous. Session and Membership are entirely 
separate in ASP.NET. It is possible to "steal" sessions from other users, and yes, people do attack web sites 
this way. 
So, if to selectively stop a post information based on whether a user is logged in, look at IsAuthenticated, 
and desired to selectively show information based on what type of user is logged in, use a Role provider. 
Because GETs can be cached, the only way to selectively allow access to an action in a GET is with 
AuthorizeAttribute.

Update In response to your edited question: You already have a good example of using TempData in your question, 
namely, returning a simple error message after a failed POST. 
In terms of what should be stored in Session (beyond "not much"). Think of Session as a user-specific cache. 
Like the non-user-specific Cache, do not put security-sensitive information there. But it's a good place to stick 
stuff which is relatively expensive to look up. 

Site.Master has the user's full name displayed on it. 
That is stored in a database, and we don't want to do a database query for it for every page we serve. 
(An installation of our application is used in a single company, so a user's full name is not considered 
"security-sensitive.") So if you think of Session as a cache which varies by a cookie which the user has, you 
won't be far wrong.


Isn't Authentication mechanism based on cookie and can't it be stolen in similar way? 

yes, a cookie is involved (by default). No, it can't be stolen in a similar way. Authentication is designed 
to be secure. Session isn't. They are two different things


The default TempData provider uses the session so there really isn't much of a distinction, except that your 
TempData is cleared out at the end of the next request. You should use TempData when the data needs only to 
persist between two requests, preferably the second one being a redirect to avoid issues with other requests 
from the user -- from AJAX, for example -- deleting the data accidentally. If the data needs to persist longer 
than that, you should either repopulate the TempData or use the Session directly.

	
I understand that. I put the meeting object in TempData in the GET method, then when the users posts the form, 
I should be able to retrieve it from TempData again, right? – scottm Sep 30 '09 at 20:33
3	 	
No, you cannot count. TempData is for redirecting only. If you set TempData in a GET, then your page makes an 
AJAX call, then the user POSTs, the TempData is gone. – Craig Stuntz Sep 30 '09 at 20:35
1	 	
"No you cannot count." -> ""No you cannot count on that." See the link in my answer for more on TempData and 
redirects. – Craig Stuntz Sep 30 '09 at 20:36
  	 	
@Craig, I get your point. If I don't make any ajax requests, shouldn't it still be there, in my case? – 
  	 	
I wouldn't bet on it. What if the user POSTs data, but it fails, because of server-side validation. So the 
POST returns a view, instead of redirecting. The user fixes the validation issue and POSTs again. The TempData 
is gone, because it was erased after the failed POST. Anyway, you probably use AJAX sooner or later, so don't 
plan around not using it. TempData really is for redirects only; this was confirmed to me privately by a member 
of the MVC team

Under the hood, TempData uses Session to store values. So there isn't much difference in terms of storage 
mechanisms or anything like that. However, TempData only lasts until the next request is received.

If the user makes an ajax request in between form posts, TempData is gone. Any request whatsoever will clear 
TempData. So it's really only reliable when you're doing a manual redirect.

Why can't you just simply render the meeting ID to a hidden field in your View form? You're already adding it 
session-data-tempdata.mdto the model. Alternately, add it to your route as a parameter.


TempData Vs Session

TempData

TempData allow us to persisting data for the duration of single subsequent request.
ASP.net MVC will automatically expire the value of tempdata once consecutive request returned the result (it means, it alive only till the target view is fully loaded).
It valid for only current and subsequent request only
TempData has Keep method to retention the value of TempData.

Example:

TempData.Keep(), TempData.Keep(“EmpName”)

TempData internally stored the value in to Session variable.

It is used to stored only one time messages like validation messages, error messages etc.
Session:

Session is able to store data much more long time, until user session is not expire.
Session will be expire after the session time out occurred.
It valid for all requests.
N/A
Session varible are stored in SessionStateItemCollection object (Which is exposed through the HttpContext.Session property of page).
It is used to stored long life data like user id, role id etc. which required throughout user session.
TempData and session, both required typecasting for getting data and check for null values to avoid run time exception.

share

https://andrewlock.net/an-introduction-to-session-storage-in-asp-net-core/

http://jakeydocs.readthedocs.io/en/latest/fundamentals/app-state.html

