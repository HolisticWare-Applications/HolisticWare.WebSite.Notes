# `null` Checks

null-checks.md

in C# > 7 use if (obj is null)

For not null use
in C# 7-8:  if (obj is object)
and from C# 9: if (obj is not null)

These will ignore any == or != defined by the object (unless of course you want to use them for null checks

77

C# 6 has monadic null checking :)

before:

if (points != null) {
    var next = points.FirstOrDefault();
    if (next != null && next.X != null) return next.X;
}   
return -1;
after:

var bestValue = points?.FirstOrDefault()?.X ?? -1;


As of C# 9 you can do

if (obj is null) { ... }
For not null use

if (obj is not null) { ... }




6

As of C# 8 you can use the 'empty' property pattern (with pattern matching) to ensure an object is not null:

if (obj is { })
{
    // 'obj' is not null here
}
This approach means "if the object references an instance of something" (i.e. it's not null).

You can think of this as the opposite of: if (obj is null).... which will return true when the object does not reference an instance of something.

