Build action 'EmbeddedResource' is not supported by one or more of the project's targets.	


Error		
DEP0700 : 
Registration of the app failed. Rejecting a request to register from AppxManifest.xml because
 the files are on a network share. Copy the files to the local computer before registering 
 the package. (0x80073cf9)	
 

 Right-click the project
Select Properties
Select the Debug settings
Under Start options
Set Target Device to "Remote Machine"
Set Remote machine to "localhost"