# Context Filtering/Compression Tools / Shell Output Compression

context-filtering-compression--tools--shell-output-compression.md

*   `rtk` / `rtk-ai`

    *   https://github.com/rtk-ai/rtk

    *   Rust Token Killer

*   snip

    *   https://github.com/edouard-claude/snip

        Snip: A pure Go-based alternative to RTK. Snip achieves similar token reductions (60-90%) but instead of compiled Rust code, it uses declarative, composable YAML pipelines to filter outputs (such as removing lines, keeping only regex matches, or JSON extracting).Headroom: A CLI tool highly recommended as both a direct alternative and a complementary tool to RTK. It is built specifically to auto-compress tool_result content in agent environments and typically saves around 30% of input tokens natively.

*   LeanCTX

    A lighter-weight alternative positioned directly in the token-reduction space. LeanCTX minimizes git diffs by reducing them to a simple filename and line count, though it can sometimes hide valuable context if the agent strictly needs to review code.

    *   https://github.com/yvgude/lean-ctx

    https://www.reddit.com/r/AskVibecoders/comments/1v1fhi0/leanctx_now_supports_multiagent_handoff_ran/

    https://www.reddit.com/r/VibeCodeDevs/comments/1v1ffjv/leanctx_now_supports_multiagent_handoff_ran/

    Website: https://leanctx.com
    
    GitHub: https://github.com/yvgude/lean-ctx

*   9Router

    A universal CLI proxy that functions much like a middleware router. It includes an RTK-style token saver to auto-compress tool results, tracks usage quotas, and allows multi-account round-robining.

    https://9router.com/

    https://github.com/decolua/9router









*   scribe

    *   https://github.com/sibyllinesoft/scribe


    https://www.reddit.com/r/golang/comments/1sd1i50/snip_rtk_alternative_in_go_reduce_llm_token_usage/

    https://news.ycombinator.com/item?id=48588755

    https://mroczek.dev/articles/the-token-compression-illusion-why-im-skeptical-of-rtk/


    https://maki.sh/





Sqz: Another lightweight token reduction tool that is comparable to RTK but differs slightly by handling error grouping by file and delta encoding on verification re-reads.

