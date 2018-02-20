# CMS Cloudscribe

# Cloudscribe

Options:

  -M|--MultiTenantMode        
  
        Multi-tenancy configuration.                                                              
                FolderName    - There is a root tenant, and other tenants can be added starting at a folder segment.
                HostName      - You will be able to create additional sites by specifying a host name. 
                Additional tenants require DNS and web server settings.
                None          - A single tenant installation. This can be changed later by configuration.
            Default: FolderName                                                                       

  -S|--SimpleContentConfig    
  
        SimpleContent configuration.                                                              
                a    - Pages and Bog with Pages as default route                                      
                b    - Pages and Blog with Home Controller as default route                           
                c    - Blog ONLY with Blog as default route                                           
                d    - Blog ONLY with Home Controller as default route                                
                z    - Not installed, SimpleContent will not be included                              
            Default: a                                                                                

  -N|--NonRootPagesSegment    
  
        If you are using SimpleContent pages with SimpleContentConfig option b, this will be used as the 
        url segment for the pages to start at.
                string - Optional                                                                         
                Default: p                                                                                

  -No|--NonRootPagesTitle     
  
        If you are using SimpleContent pages with SimpleContentConfig option b, this will be used as the title 
        for the pages top level menu item.
                string - Optional                                                                         
                Default: Articles                                                                         

  -C|--ContactForm            
  
        Include cloudscribe SimpleContactForm.                                                    
                bool - Optional                                                                           
                Default: false                                                                            

  -K|--KvpCustomRegistration  
  
        Include cloudscribe key/value pair custom registration.                                   
                bool - Optional                                                                           
                Default: false                                                                            

  -I|--IdentityServer         
  
        Include IdentityServer4 integration.                                                      
                bool - Optional                                                                           
                Default: false                                                                            

  -L|--Logging                
  
        Include cloudscribe logging and log viewer UI.                                            
                bool - Optional                                                                           
                Default: true                                                                             

  -D|--DataStorage            
  
        The data storage platform you wish to use.                                                
                NoDb     - A no-database file system storage                                          
                MSSQL    - Microsoft SqlServer storage using Entity Framework Core                    
                pgsql    - PostgreSql storage using Entity Framework Core                             
                MySql    - MySql storage using Entity Framework Core                                  
            Default: MSSQL                                                                            

  -W|--Webpack                
  
        Include client side development setup with webpack, typescript, and theme ready to customize 
        using bootstrap-sass. This is an advanced option and requires that you have node and npm installed.        
                bool - Optional                                                                           
                Default: false                                                                            

  -R|--ReactSample            
  
        Include a react sample client app, requires Webpack to be true                            
                bool - Optional                                                                           
                Default: true                                                                             

  -H|--HttpsPort              
  
        Port number to use to configure SSL in launchSettings.json.                               
                integer - Optional                                                                        

  -Ke|--KestrelPort           
  
        Port number to use to configure Kestrel in launchSettings.json.                           
                integer - Optional                                                                        

  -II|--IISExpressPort        
  
        Port number to use to configure IIS Express in launchSettings.json.                       
                              integer - Optional                                                                        


    rm -fr HolisticWare.WebSite.ASP.net.Core.CloudScribe/
    dotnet new \
        cloudscribe \
        --output HolisticWare.WebSite.ASP.net.Core.CloudScribe \
            --MultiTenantMode None \
            --DataStorage NoDb \
            --SimpleContentConfig a \
            --ContactForm true \
            --KvpCustomRegistration true \
            --IdentityServer true \
            --Logging true \




## SEO

    https://alternativeto.net/software/google-webmaster-tools/            

    http://www.benhallbenhall.com/2013/01/script-automatically-submit-sitemap-google-bing-yahoo-ask-etc/

    https://stackoverflow.com/questions/1332601/pinging-google-sitemap-after-every-new-article-submission

    https://daveismyname.blog/how-to-ping-search-engines-with-curl

## Events

https://github.com/joeaudette/cloudscribe.SimpleContent/tree/master/src/cloudscribe.SimpleContent.Models/EventHandlers

https://www.cloudscribe.com/docs/custom-event-handlers
