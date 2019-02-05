# Objective Sharpie

## Objective Sharpie Internal Version Download

https://wrench.internalx.com/Wrench/ViewLane.aspx?lane_id=566&host_id=127&revision_id=579468

## Enums

Objective-sharpie create enums that inherit from nint and cause compile errors.

	public enum MyEnum : nint
	
Because, AFAIK, in the core of iOS, they don't have this problem, their compiler 
supports the enums [CHECK]

Solution is to change inheriting type.

	public enum MyEnum : ulong // or long

This is because public platforms are few versions behind [CHECK].
It is not certain if ordinary users will get this version.

