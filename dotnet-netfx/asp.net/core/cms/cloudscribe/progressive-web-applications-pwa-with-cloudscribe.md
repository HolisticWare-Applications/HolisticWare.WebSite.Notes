# Progressive Web Applications PWAs with cloudscribe 

progressive-web-applications-pwa-with-cloudscribe.md

Progressive Web Application definition:

*	served over HTTPS (requirement - so must)
	HTTP only for localhost
	any website can be PWA
*	includes Web App Manifest (manifest.json JSON file) requirement
	./wwwroot/manifest.json
*	uses Service Worker JavaScript file

*	pros:

	*	work offline
	* 	possible installation on the desktop or phone
	*	faster than regular websites
	*	more reliable
	*	most major browsers already support them 
		*	upcomming 2017-11	
			*	Safari 
			*	Edge
			
*	cons
	*	??


## Setup

```
    dotnet restore

    # Step 01
    dotnet add package \
        WebEssentials.AspNetCore.PWA
    
    # Step 02
   /Applications/Inkscape.app/Contents/Resources/bin/inkscape \
        -w 192 -h 192 \
        --export-png $(pwd)/./wwwroot/images/HolisticWare.svg.192.png \
        $(pwd)/../../externals/HolisticWare.Branding/svg/holisticware/HolisticWare.svg

    /Applications/Inkscape.app/Contents/Resources/bin/inkscape \
        -w 512 -h 512 \
        --export-png $(pwd)/./wwwroot/images/HolisticWare.svg.192.png \
        $(pwd)/../../externals/HolisticWare.Branding/svg/holisticware/HolisticWare.svg
    
    # Step 03
    echo \
"
    {
        \"name\": \"HolisticWare.WebSite.ASP.net.Core.Cloudscribe\",
        \"short_name\": \"HolisticWare.WebSite\",
        \"description\": \"HolisticWare.WebSite using Cloudscribe on ASP.net.Core\",
        \"icons\": 
            [
                {
                    \"src\": \"/images/HolisticWare.svg.192.png\",
                    \"sizes\": \"192x192\"
                },
                {
                    \"src\": \"/images/HolisticWare.svg.512.png\",
                    \"sizes\": \"512x512\"
                }
            ],
        \"display\": \"standalone\",
        \"start_url\": \"/\",
        \"theme-color\": \"#ff0000\"
    }
" \
    > \
    ./wwwroot/manifest.json
```