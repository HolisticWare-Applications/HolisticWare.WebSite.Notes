

	
mnx 3 days ago [-]

AFAIK, Xamarin Forms was always meant to be simplistic, and not very customisable. 
They even say it was meant to be called Xamarin Duplo, but trademarks.
reply
	
zgramana 3 days ago [-]

That was just an internal working name. Xamarin.Forms has first and foremost been a 
code patterns library, not a WORA framework (despite how it may be used in practice). 
It's a unique leaf on the MV* tree. The central insight from it's chief architect was 
to apply the scenegraph + renderer model from 3D graphics to solve the native 
cross-platform UI problem. It should be classified something like 
Model-ViewModel(Scenegraph)-Renderer.
As a practical matter it had to ship with a library of default renderers for common 
UI elements, but other than the layout system, those all can be replaced by alternative 
renderers either in part or in whole. But the scenegraph essentially is the data structure 
that stores your app's business value (think HTML templates + JS). The renderers can too, 
but those should be reusable across many apps (think CSS/the value prop of Bootstrap). 
The scenegraph maximizes intra-app UI code sharing and the renderers maximize inter-app 
UI code sharing.
It's a hard problem space, and there is no magic bullet. Even the Xamarin.Forms team would 
tell you that. For many use cases, it's great. The bugs are tricky, since UIKit and 
Android have major thread safety issues and wildly divergent object life cycles (and 
Android itself is such a moving target, which any experienced Android dev knows, cough 
Support Libraries cough). Bugs tend to come from the layout engine because that is the 
heaviest lift. XF eats complexity that you otherwise have to eat on your own. For many 
small/under resourced teams, that's the difference between "iOS only" and "Android also" 
support. If you are resourced for two teams, awesome! If not, but have to support both, 
you face some hard choices. Xamarin.Forms tops a very short list of available options.
All that's to say that some people use Forms to build really native apps because they 
understand the patterns Forms is built on, and it's limitations. Every framework has a 
grain. When you cut with it, the results are quick and smooth. When you cut against it, 
and the results are tough, course, and possibly cracked.
