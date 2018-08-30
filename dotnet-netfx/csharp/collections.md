# Collections

## NameValueCollection

Like Dictionary<string, string> with following differences:

*	duplicate keys allowed
*	strongly typed Dictionary<string, string>
	*	basically inherits from IEnumerable<string, string>

Possible replacement

	*	Dictionary<string, string>
	*	System.Linq.Lookup<string, string>