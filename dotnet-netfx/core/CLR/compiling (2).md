# CoreCLR compiling

## Linux

*	[https://github.com/dotnet/coreclr/blob/master/Documentation/building/linux-instructions.md](https://github.com/dotnet/coreclr/blob/master/Documentation/building/linux-instructions.md)

### Packages

	cmake
	llvm-3.5
	clang-3.5
	lldb-3.6
	lldb-3.6-dev
	libunwind8
	libunwind8-dev
	gettext
	libicu-dev
	liblttng-ust-dev
	libcurl4-openssl-dev
	libssl-dev
	uuid-dev



## Solaris

*	[http://ftp.math.utah.edu/pub/llvm/](http://ftp.math.utah.edu/pub/llvm/)

### 


	pkg install gnu-make make gcc autoconf automake pkg://solaris/system/header
	pkg install git pkg://solaris/developer/gnome/gettext
	
			
Posible conflict between 

	pkg://solaris/system/header			
			
and 	
		
	pkg://solaris/x11/header			

Absoulte package paths might be needed to resolve conflicts
	
	pkg install \
		pkg://solaris/developer/build/gnu-make \
        pkg://solaris/developer/build/make \
        pkg://solaris/developer/gcc \
		pkg://solaris/system/header \
		pkg://solaris/developer/build/autoconf \
		pkg://solaris/developer/build/automake
		

### OpenCSW

	pkgadd -d http://get.opencsw.org/now
	/opt/csw/bin/pkgutil -U
	/opt/csw/bin/pkgutil -y -i cmake 
	/usr/sbin/pkgchk -L CSWcmake # list files


	
		
Install gcc 4.3 from OpenCSW:

	pkg-get -i gcc4code gcc4g++
		