# Rules and Recommendations AKA Styleguide AKA Best Practices

readme.md

*   https://learn.microsoft.com/en-us/dotnet/standard/design-guidelines/naming-guidelines?redirectedfrom=MSDN

## Security

*   add `{` `}` to `if` statements

    *   Apple's SSL braces bug

        The "Apple SSL braces bug" refers to a specific vulnerability in Apple's SSL/TLS implementation, famously known 
        as the "goto fail" bug, which was discovered in 2014. This bug was caused by a duplicated goto statement in Apple's 
        SSL verification code, effectively bypassing critical certificate validation checks. It allowed attackers to perform
        man-in-the-middle (MITM) attacks by presenting invalid SSL certificates that would still be accepted as valid.

        The Bug in Code

        The issue was caused by an extra goto fail; statement in the code responsible for verifying SSL certificates. Here's 
        a simplified example of the problematic code:

        ```
        if ((err = SSLHashSHA1.update(&hashCtx, &signedParams)) != 0)
            goto fail;
        goto fail; // This extra line caused the bug
        if ((err = SSLHashSHA1.final(&hashCtx, &hashOut)) != 0)
            goto fail;
        ```

        The second goto fail; was always executed, skipping the subsequent validation logic. As a result, SSL certificates
        were not properly verified.

        Impact

        Affected macOS and iOS systems.

        Allowed attackers to intercept and decrypt secure communications.

        Highlighted the importance of code reviews and testing in critical security systems.

        Resolution

        Apple quickly released patches for macOS and iOS to fix the issue. Developers were reminded of the importance of 
        avoiding redundant or misplaced control flow statements in security-critical code.

        https://www.codecentric.de/en/knowledge-hub/blog/curly-braces

        https://www.reddit.com/r/programming/comments/1z65j2/reflections_on_curly_braces_apples_ssl_bug_and/

        https://www.reddit.com/r/C_Programming/comments/iyu0ei/an_argument_on_why_you_should_always_put_curly/

        https://www.reddit.com/r/csharp/comments/21bl1y/if_without_braces/

        http://nakedsecurity.sophos.com/2014/02/24/anatomy-of-a-goto-fail-apples-ssl-bug-explained-plus-an-unofficial-patch/

        http://www.cnet.com/news/apple-finally-fixes-gotofail-os-x-security-hole/

        https://www.securecoding.cert.org/confluence/display/seccode/PRE10-C.+Wrap+multistatement+macros+in+a+do-while+loop

        https://medium.com/swlh/apples-most-notorious-code-bug-6478ebaea44f

        https://news.ycombinator.com/item?id=7318039

        https://dwheeler.com/essays/apple-goto-fail.html

        https://www.zetetic.net/blog/2014/2/22/apples-ssltls-bug.html

        https://www.imperialviolet.org/2014/02/22/applebug.html
        
## Casing

*   https://github.com/SzymonHalucha/Minerals.StringCases

*   https://www.reddit.com/r/dotnet/comments/66itta/camelcase_vs_snake_case_for_net_programming/

*   https://pluralistic.net/2023/01/21/potemkin-ai/#hey-guys

https://github.com/StyleCop


## Fluent style

*   https://www.reddit.com/r/csharp/comments/1gspstc/am_i_really_the_only_one_who_dislikes_fluent/

*   https://www.reddit.com/r/dotnet/comments/1hgjxvb/thoughts_on_using_var_vs_explicit_typing_in/
