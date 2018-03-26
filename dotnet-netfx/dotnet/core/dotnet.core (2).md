# DotNet Core

*	[https://dotnet.github.io/](https://dotnet.github.io/)
https://www.dotnetfoundation.org/netcore

https://gist.github.com/davidfowl/8939f305567e1755412d6dc0b8baf1b7

https://github.com/dotnet/core


https://github.com/aspnet/home

*	set of components for
	*	runtime	and runtime services		
		CoreCLR		
		small optimized runtime - basis 			
		.NET Core runtime, called CoreCLR, 
		base library, called mscorlib
		garbage collector
		JIT compiler
		base .NET data types
		low-level classes (Int32, Int64, String...)
		[https://github.com/dotnet/coreclr](https://github.com/dotnet/coreclr)		
	*	library
		CoreFX - Core Framework, Base Class Libraries BCL		
		.NET Core foundational libraries, called CoreFX. It includes classes for collections, file systems, console, XML, async and many others.			
		[https://github.com/dotnet/corefx](https://github.com/dotnet/corefx)		
	*	compiler		
		Roslyn		
		[https://github.com/dotnet/roslyn](https://github.com/dotnet/roslyn)		
		open-source C# and Visual Basic compilers with rich code analysis APIs.
		compiler as a service
	*	commandline utilities		
		CoreCLI - Command Line Interface
	*	applications models	(current status 2016-05)
		*	console
		*	ASP.net Core 1.0 (ASP.net 5 AKA vNext)		
*	general purpose framework
*	modular design
*	high-performance 
*	managed
	*	easy to write applications and libraries
	*	safe to execute
	*	memory management with garbage collector
	*	code compilation with 
		*	JIT compiler
		*	AoT (Ahead of time) compilation with .NET Native
*	supports full side by side 
	easy to adopt new .NET Core versions without affecting other apps
*	used in various scenarios
	*	client 
			*	device
				*	mobile
				*	IoT
	*	server 
		*	cloud
	*	applications
	*	services
*	basis of various app models	
	*	ASP.NET Core 1.0 (ASP.net 5 , vNext)
	*	console apps
*	multiplatform support
	*	Windows
	*	MacOSX [IN PROGRESS]
	*	Linux [IN PROGRESS]
	*	BSD flavors [IN PROGRESS]
*	LLVM integration
*	components	

.NET Core has two major components. It includes a small runtime that is built 
from the same codebase as the .NET Framework CLR. The .NET Core runtime includes 
the same GC and JIT (RyuJIT), but doesn’t include features like 
Application Domains or Code Access Security. The runtime is delivered on NuGet, 
via the Microsoft.CoreCLR package.

.NET Core also includes the base class libraries. These libraries are largely the 
same code as the .NET Framework class libraries, but have been factored 
(removal of dependencies) to enable us to ship a smaller set of libraries. 
These libraries are shipped as System.* NuGet packages on NuGet.org.



### .NET Core CLI

*	set of command line tools
	*	standalone
	*	simple
	*	cross platform
	*	modular
	*	extensible
*	usage
	*	for building
	*	managing 
	*	other operating activities on .NET projects
*	includes commands such as 
	*	compilation, 
	*	NuGet package management 
	*	launching a debugger session
*	features
	*	intended to be fully featured, 
	*	enabling extensive library and 
	*	app development functionality appropriate at the command-line. 
	*	everything needed to develop an app in an SSH session
	*	intended to be a fundamental building block for building finished 
		experiences in tools such as Visual Studio.
*	design goals
	*	Language agnostic - embrace "common language runtime"
	*	Target agnostic - multi-targets
	*	Runtime agnostic.
	*	Simple extensibility and layering
	*	Cross-platform - support and personality
	*	Outside-in philosophy - higher-level tools drive the CLI

	
## Historical Context - DNX and K

DNX - DotNet Execution 

DNX replaced K Project

	k restore
	k web
	k run
	k build
	
DNX

	dnu install
	dnu restore
	dnx web
	dnx build
	
*	been using DNX for all .NET Core scenarios for nearly two years. 
*	It provides a lot of great experiences, but doesn't have great "pay for play" 
	characteristics. 
	DNX is a big leap from building the CoreCLR and CoreFX repos and wanting to 
	build an app with a simple environment. In fact, one of the open source contributors 
	to CoreCLR said: 
	"I can build CoreCLR, but I don't know how to build 'Hello World'." 
	We cannot have that!
*	These components will replace DNX and are essentially DNX split in three parts.

*	.NET Core includes three new components: 
	*	set of standalone command-line (CLI) tools, 
	*	shared framework and 
	*	set of runtime services
	

*	DNX services will be offered as a hosting option available to apps. 
	*	possible opt to use a host that offers one or more of these services
		*	like file change watching or 
		*	NuGet package servicing. 
	*	possible opt to use a shared framework, 
		*	to ease deployment of dependencies and for performance reasons
	*	NOTE: Some of this is still being designed and isn't yet implemented.

ASP.NET 5 will transition to the new tools for RC2. 
This is already in progress. 
There will be a smooth transition from DNX to these new .NET Core 
components.
	
With RC1 release of .NET Core and ASP.NET Core 1.0, DNX tooling was intrpduced 
to the world. 
With RC2 release of .NET Core and ASP.NET Core 1.0 transitioning to the 
.NET Core CLI is happening.

DNX was a runtime and a toolset used to build .NET Core and, more specifically, 
ASP.NET Core 1.0 applications. 

It consisted of 3 main pieces:

*	DNVM - an install script for obtaining DNX
	DotNet Version Manager was a bash/PowerShell script 
	*	used to install a DNX on the machine. 
	*	It helped users get the DNX needed from the feed they specified 
		(or default ones) as well as mark a certain DNX "active", 
		which would put it on the $PATH for the given session. 
	*	This allowed users to use the various tools.
	*	discontinued because its feature set was made redundant by changes coming 
		in the .NET Core CLI tools.
*	DNX (Dotnet Execution Runtime) 
	the runtime that executes app code
*	DNU (Dotnet Developer Utility) 
	tooling for managing dependencies, building and publishing applications

With the introduction of the CLI, all of the above are now part of a single 
toolset	
	
CLI tools come packaged in two main ways

	*	Native installers for a given platform
	*	Install script for other situations (like CI servers)


DNVM features:
	*	install features - redundant
	*	runtime selection - project.json
		runtime is referenced in project.json by adding a package of a 
		certain version to other dependencies. 
		With this change, application will be able to use the new runtime bits. 
		Getting these bits to the machine is the same as with the CLI: 
		*	install the runtime via one of the native installers it supports or 
		*	via its install script.


	
## Platform Support

*	Windows
	instaler 
	https://dotnetcli.blob.core.windows.net/dotnet/beta/Installers/1.0.0.001598/dotnet-win-x64.1.0.0.001598.exe
	*	Windows 10
		*	Windows 10 Core IoT
	*	Windows Server 2016
	*	Windows 8.1
	*	Windows 8
	*	Windows 7		
		*	prerequisites 
			*	Visual C++ Redistributable 
				*	for Visual Studio 2012 Update 4 
				* 	for Visual Studio 2015	
	*	Windows Server 2008 	
		*	prerequisites 
			*	Visual C++ Redistributable 
				*	for Visual Studio 2012 Update 4 
				* 	for Visual Studio 2015
	*	Windows Server 2012		
		*	prerequisites 
			*	Visual C++ Redistributable 
				*	for Visual Studio 2012 Update 4 
				* 	for Visual Studio 2015

### Runtime Identifiers RIDs and Runtime Identifier Catalogue

RIDs 
	*	RIDs that represent concrete operating systems should be of the form: 
		[os].[version]-[arch]
	*	identify target operating systems where an application or asset 
		(that is, assembly) will run				
	*	For the packages with native dependencies, it will designate 
		on which platforms the package can be restored.	
		
RID graph 
	*	defined in a package called Microsoft.NETCore.Platforms 
		*	in a file called runtime.json which
		*	CoreFX repo	

*	Linux RIDs
	*	Red Hat Enterprise Linux
		rhel.7.0-x64
		rhel.7.1-x64
		rhel.7.2-x64
	*	Ubuntu
		ubuntu.14.04-x64
		ubuntu.14.10-x64
		ubuntu.15.04-x64
	*	CentOS
		centos.7-x64
		centos.7.1-x64
	*	Debian
		debian.8-x64
		debian.8.2-x64
	*	Ubuntu derivatives - Currently supported 
		linuxmint.17-x64
		linuxmint.17.1-x64
		linuxmint.17.2-x64
		linuxmint.17.3-x64
*	OS X RIDs
	osx.10.10-x64
	osx.10.11-x64
*	Windows RIDs
	*	Windows 7
		win7-x64
		win7-x86
	*	Windows 8
		win8-x64
		win8-x86
	*	Windows 10
		win10-x64
		win10-x86
		
		
		

## Workflow

### Install

#### Linux

Ubuntu

	# set up the apt-get feed that hosts the package needed
	sudo sh -c \
		'echo \
			"deb [arch=amd64] http://apt-mo.trafficmanager.net/repos/dotnet/ trusty main" \
			> /etc/apt/sources.list.d/dotnetdev.list
		'
	sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
	sudo apt-get update

	# install
	sudo apt-get install dotnet=1.0.0.001598-1

	
	
#### MacOSX

	# In order to use .NET Core, install the updated version of OpenSSL.
	brew update
	brew install openssl
	brew link --force openssl	

Install from package

	https://dotnetcli.blob.core.windows.net/dotnet/beta/Installers/1.0.0.001598/dotnet-osx-x64.1.0.0.001598.pkg
	
	
	
#### Windows
	run installer
	
	
	
### Create App Project

	mkdir hwapp
	cd hwapp
	dotnet new

### Restore

	dotnet restore

### Run

either run from source or compile the sample. 

Running from source is straightforward:

	dotnet run

Compiling to IL is done using:

	dotnet build
	
	
## Applications

currently supported:

	*	console applications
	*	Web applications
	
### Packaging and Deploying models

*	deploying 
	*	to a shared runtime
	*	to self-contained applications
	*	single binaries	
	
	
	
	
	
## Compiler[s] Roslyn

http://forums.dotnetfoundation.org/t/compiling-net-core-code-on-linux-os-x/302/7


## Diverse

http://blog.stablekernel.com/net-and-the-coreclr-on-osx/
	