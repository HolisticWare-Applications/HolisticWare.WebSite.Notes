# DotNet Core

*	[https://dotnet.github.io/](https://dotnet.github.io/)

*	general purpose framework
*	set of components for
	*	runtime
		CoreCLR
	*	library
		CoreFX - Core Frmaework, Base Class Libraries BCL
	*	compiler
		Roslyn
		CoreCLI - Command Line Interface
*	modular 
*	managed
	*	easy to write
	*	safe to execute
	*	memory management with garbage collector
	*	code compilation with 
		*	JIT compiler
		*	AoT (Ahead of time) compilation with .NET Native
*	used in various scenarios
	*	client 
			*	device
				*	mobile
				*	IoT
	*	server 
		*	cloud
	*	applications
	*	services
*	multiplatform support
	*	Windows
	*	MacOSX [IN PROGRESS]
	*	Linux [IN PROGRESS]
	*	BSD flavors [IN PROGRESS]
*	LLVM integration


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

.NET Core includes three new components: 

	set of standalone command-line (CLI) tools, 
	shared framework and 
	set of runtime services
	

The DNX services will be offered as a hosting option available to apps. You can opt to use a host that offers one or more of these services, like file change watching or NuGet package servicing. You can also opt to use a shared framework, to ease deployment of dependencies and for performance reasons. Some of this is still being designed and isn't yet implemented.

ASP.NET 5 will transition to the new tools for RC2. This is already in progress. There will be a smooth transition from DNX to these new .NET Core components.
	

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

	
## Workflow

### Install

Windows
	run installer

Ubuntu (14.10)
	
	
	
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
	
	
