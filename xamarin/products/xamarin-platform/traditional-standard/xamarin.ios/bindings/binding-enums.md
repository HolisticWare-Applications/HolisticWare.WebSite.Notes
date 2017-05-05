
Enums that are nunint are bound with:

*	Native Attribute and 
*	ulong


	[Native]
	public enum Foo : ulong

If you bind them with int and Native it will build but it will crash at 
runtime with an weird error



Handling `NSOrderedSet<id<LYRQueryable>>` other than it just being a NSOrderedSet

It can be used just as the NSOrderedSet (edited)

Trying  

	NSOrderedSet<ILYRQueryable> 
