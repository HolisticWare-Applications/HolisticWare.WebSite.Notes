# Kids Programming C#

kids-programming-csharp.md



## Links 

*	Videos	
	*	https://www.pluralsight.com/courses/teaching-kids-programming
*	Tutorials		
	*	https://www.microsoft.com/net/tutorials/csharp/getting-started		
		*	Visual Studio
		*	Visual Studio Code 
		*	command line + any editor
	*	https://www.tutorialspoint.com/csharp/		
	*	http://csharp.net-tutorials.com/		
	*	https://msdn.microsoft.com/en-us/library/67ef8sbd.aspx		
	*	https://msdn.microsoft.com/en-us/library/aa288436(v=vs.71).aspx		


## Xamarin.Workbooks

###	Restrictions


#### Namespaces not allowed

#### Main entry point allready defined by script
	
Code:
	
	using System;
	using System.Collections.Generic;
	using System.Text;

		class Program
		{
			static void Main(string[] args)
			{
			}
		}

Result - Warning:
		
	(7,21): warning CS7022: 
	The entry point of the program is global script code; ignoring 
	'Program.Main(string[])' entry point.
	
	
