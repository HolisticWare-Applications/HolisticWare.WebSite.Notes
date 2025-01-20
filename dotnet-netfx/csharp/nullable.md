# Nullable

nullable.md

*   https://www.reddit.com/r/csharp/comments/1bd9szw/nullable_property_on_generic_class_isnt_treated/

*   https://www.reddit.com/r/csharp/comments/1e32v8i/null_propagators_how_do_you_prefer_to_check_if_a/

*   https://www.reddit.com/r/csharp/comments/1i3ng5m/best_practices_when_dealing_with_nullable_types/

The function either can return null or it cannot; "Rarely" or "hardly ever" is irrelevant. You should handle for the null case.

Whether it's an exception or not depends on why it can return null. If it indicates a broken state, then throw an exception. If it's not, then continue processing however is reasonable with your business logic.

Another way to phrase it is: will whatever is calling this method assume is it not null? If so, throw an exception. If not, then let them handle it, but if you might return null, then have a nullable return type.

One of my biggest pet peeves as a developer is when someone tells me something is an edge case and not a big concern.

Any edge cases you need to consider might as well be 50/50 when you're programming.



Rule of thumb:

1 if you need a cast, you are doing it wrong.
2 if you use an exception for checking your code, you are doing it wrong