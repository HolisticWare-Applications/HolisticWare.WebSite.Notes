# Signing and Publishing Nugets

signing-publishing-nugets.md

Project Components - Publish NuGets / Signed Artifacts
This build requires parameters:

 	BUILD_MANIFEST_URL	

http://xamjenkinsartifact.blob.core.windows.net/components-androidsupport-public-artifacts/ArtifactsFor-275/329f18ef4f0af81b18372602dfbd6cd1f0788ce3/output/signed/metadata.json


The artifact manifest url of the signed build to publish.	

 	GLOBBER_FILE_PATTERNS	

	**/output/*.nupkg

A comma delimited list of globbing patterns to use to find nupkg files for publishing Eg: 

	./output/*.nupkg 
	
or 

	./output/Specific1.nupkg,./output/Specific2.nupkg or ./output/Google*.nupkg,./output/Specific.nupkg	
	 
	 PUBLISH_TARGET	

Pick the location you would like to publish artifacts to. Keep in mind, if you pick ComponentStore your 
GLOBBER_FILE_PATTERNS should match .xam files, not the default .nupkg	

 	PREVIEW_ONLY	

Check the box to run a preview of the publish job, which will list the files discovered to be published based on the 
input globber patterns, but will not actually publish them.	

 	PACKAGE_DESCRIPTION	

Optional build description to set











