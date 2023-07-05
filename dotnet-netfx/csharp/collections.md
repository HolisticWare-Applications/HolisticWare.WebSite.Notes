# Collections

collections.md

## IEnumerable

*   How IEnumerable can kill your performance in C#

    *   https://www.youtube.com/watch?v=cLsmW7a8MkU&ab_channel=NickChapsas

    *   beware of `IEnumerable` and `yield return`!!1

        *   multiple enumeration

*	C# Yield Return: What is it and how does it work?

	*	https://www.youtube.com/watch?v=HRXkeaeImGs&ab_channel=BrianLagunas

## NameValueCollection

Like Dictionary<string, string> with following differences:

*	duplicate keys allowed
*	strongly typed Dictionary<string, string>
	*	basically inherits from IEnumerable<string, string>

Possible replacement

	*	Dictionary<string, string>
	*	System.Linq.Lookup<string, string>