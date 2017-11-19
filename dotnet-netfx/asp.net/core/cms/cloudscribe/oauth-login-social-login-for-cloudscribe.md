# OAuth Login (Social login) for cloudscribe

oauth-login-social-login-for-cloudscribe.md

*	Microsoft				
	*	Application Registration Portal
		https://apps.dev.microsoft.com/#/application/
		*	Application Id	(`client_id`)
		*	Platforms
			*	Web
				*	Implicit Flow allow yes/no
				*	`redirect_url`
					https://localhost:44320/login-oauth2-microsoft
				*	logout url
					url to achieve single sign out
					https://apps.dev.microsoft.com/#/application/				
			*	Native Application
				*	Custom Redirect URIs   
					Redirect URIs specify the location where authentication 
					responses are sent.
					msal<client_id>://auth
				*	Built-in redirect URIs 
					These redirect URIs are compatible with authentication 
					libraries that use embedded webviews (e.g. ADAL). Microsoft
					recommends using an authentication library that supports 
					system webviews.
					https://login.microsoftonline.com/common/oauth2/nativeclient
					urn:ietf:wg:oauth:2.0:oob
	*	docs
		
		
		
## Microsoft

```
	dotnet add \
		package Microsoft.AspNetCore.Authentication.MicrosoftAccount		
```
	
For Google you need to use the Google API Console, see also the documentation here about how to set things up in google api console.
For Facebook, you need to go the Facebook for Developers site, see also the documentation here.
For Twitter, you need to go to https://apps.twitter.com/, see also the documentation here.