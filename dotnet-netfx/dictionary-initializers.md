# Dictionary Initializers

	var data = new Dictionary<string, string>
	{
		{ "test", "val" }, 
		{ "test2", "val2" }
	};

In C# 6, you now have the option of using a more intuitive syntax with 
Dictionary as well as any other type that supports indexers. 
The above statement can be rewritten as:

	var data = new Dictionary<string, string>
	{
		["test"] = "val",
		["test2"] = "val2"
	};