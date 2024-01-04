# Testing

testing.md

*   [./testing/readme.md](./testing/readme.md)

*   TDD test driven development

    *   https://www.reddit.com/r/csharp/comments/18u9rsy/is_test_driven_development_faster/

    *   TDD, Where Did It All Go Wrong (Ian Cooper)
    
        *   https://www.youtube.com/watch?app=desktop&v=EZ05e7EMOLM&ab_channel=DevTernityConference

        - Test requirements, not low level
        - Test public API. Given when then
        - Test the exports from a module
        - Focus on higher-level
        - Test modules, not class
        - Refactoring is needed to see what is implementation and what is exports from module
        - Test behaviours
        - Think about your code as an api
        - Test the abstraction, not the implementation
        - Test are isolated and with shared fixture (to run quickly)
        - Red-green-refactor (go fast to working code)
        - No new tests during refactoring
        - Heavy coupling is the problem with all software
        - Thin public api 
        - Refactoring = changing internals
        - Patterns in the refactoring
        - If you're not really sure, write tests for implementation (delete the tests)
        - Not classes, behaviours
        - Don't isolate classes in testing
        - Private methods (these are implementation details)


    *   https://codemanship.co.uk/tdd_jasongorman_codemanship.pdf

    *   https://github.com/Barsonax/TestExamplesDotnet

    *   https://www.reddit.com/r/dotnet/comments/18uu6d3/my_tech_lead_refuse_to_do_integration_tests/
    