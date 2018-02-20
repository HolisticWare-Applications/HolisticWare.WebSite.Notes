# Faking non-exitent cake script

If common.cake does not exist create it (with some fake content) and load

	if ( ! FileExists("./common.cake"))
	{
			FileWriteLines
			(
				"./common.cake", 
				new[] 
				{
					"Information (\"Empty Cake script\");",
					""
				} 
			);	
	}
	//CakeExecuteScript("./common.cake");

	//RunTarget("common-cake");
	//FileWriteLines("./common.cake", "");
	#load "common.cake"
