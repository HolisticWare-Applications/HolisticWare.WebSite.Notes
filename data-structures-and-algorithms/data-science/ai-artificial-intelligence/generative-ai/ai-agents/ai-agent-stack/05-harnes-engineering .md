# Harnes Engineering

05-harnes-engineering .md

https://walkinglabs.github.io/learn-harness-engineering/en/

https://www.nxcode.io/resources/news/what-is-harness-engineering-complete-guide-2026


https://martinfowler.com/articles/harness-engineering.html

https://openai.com/index/harness-engineering/

https://walkinglabs.github.io/learn-harness-engineering/en/

https://medium.com/@visrow/what-is-harness-engineering-17aee3ce620b

https://harness-engineering.ai/

    https://harness-engineering.ai/knowledge-graph/

https://arxiv.org/abs/2609.00006

    Harness Engineering: Anatomy, Architecture, and Evolution of Coding Agents -- A Source-Code Study of Eleven Systems

    Claude Code (Anthropic),
    Codex CLI (OpenAI), Gemini CLI (Google), Mistral Vibe (Mistral), OpenHands, Aider,
    Mini-SWE-Agent, Hermes (Nous Research), Pi, OpenCode, and OpenClaw, plus Omnigent (Databricks)

https://www.nxcode.io/resources/news/what-is-harness-engineering-complete-guide-2026



Harness engineering is the practice of designing, building, and operating the runtime environment, tools, context, and verification loops that surround an AI model to make an agent reliable—often summarized as Agent = Model + Harness. Rather than relying only on prompts or raw model intelligence, it focuses on the surrounding system that lets an agent act, stay on track, and check its own work. [1] (/goto?url=CAEScgHEIkXX7l-K4tRE9LkVi_Adwzt2jYRGAbDWW0NXrQfBBXpxUaSx-y8m6aeBeztD26v7gAsxUlv-vUt2khNayn1-_tu8XwhsPEZXkSWizNPSYSyija7KiZ8hku0kw5BVEZ_-yyJ1UHh-FhO4xDrhtzYMJg), [2] (/goto?url=CAESWAHEIkXXyPi5YToBFIcjGCbRiaHobMhAu0pRHcJSLjABv_u0D_GXewBXHF6a4D_RrYbH6zjiPaVxvXdoyJzykfRwxpOCByt-XcRSfXKAM00r4iSl_EyOZ7k), [3] (/goto?url=CAESVwHEIkXXxcih7sk_Vhy-Pw5evswi3E1pGbQ9kkQ8NBBErk03QXNLLpdTrTAks9nb5jO3Fzk5UK8macRBpHG17Yt7twyzN3YJNjFA7H4pi0OGapZMF5a6nA), [4] (/goto?url=CAESjAEBxCJF1xZx378_2TpjNNL8Dn-lMfpquotHXtW-hpfyuv17oIGkZ_QyuDAf4Sl6IFC49vkKqT6KzZtofG5ueXk293OVeEKScaRak5mrtTVKwIIjJj9N-llGrzhj6u0_w-qvZoCnpV3tTNn6j1QsPxq6CtRSf9ZrJowaYN2jZQv6c6MvhQJBj4x8qf6oiQ), [5] (/goto?url=CAESdgHEIkXX6R2oFvYEXxtmr93hA4L8aPc4yDgl_Y9A_a34OvsQOtgbnHEgTK4nHbaDYTCYNa85F6Tr3jDSOTrx9ho8CSXdAxPN9JoRsLtUB7TRbP64zmOodLZQfhzI6y2sSPeQqr3IvdLdGZcl3nUDQb1T-d8bKKs), [6] (/goto?url=CAESYgHEIkXXgfzDgPvNayCqQ-vSiI85Dt1mLqusvnCcPjzhGINdFCjM7yVGWWaQNB282pxZzm4YdNdyi_bph5xr7TxFcKtswW2JJbR7ClR0-IY8iSsU1Drntc24nTlD-4k9Ffp9)

Why It Emerged

As frontier models and coding agents became capable of multi-step execution, reliability bottlenecks shifted from basic reasoning to environment design and feedback. Instead of writing every line of code or crafting single prompts by hand, engineers shape the surrounding scaffolding so agents can operate with clear boundaries and verifiable results. [1] (/goto?url=CAESZQHEIkXX1uL9b7JXkWcWdBcuDRUP4fbBhmaxgbG2do3G7RAHsW34vt5NRSVs5_pBT_4zFlyn2dKAWxx1FEN0XS7y6pKQXYQEKkZAVryzSXdHp0aqDLNTF_eFGQ0lJVq43WiCpqja), [2] (/goto?url=CAEScAHEIkXXqvtsmTRjL8nyAfLzxaPJuzX1uN0Ih-Uz-rZtaECy3oN1GbIKBI2U3qIwS5UwdW8EVDoPSAxKtvdKgvLkEJs-ztQ7IX1R5JS0OZiMIKmtICjeSPcFUC9FRR_PvoqcwQpK6vmI2T-bprvZJs8), [3] (/goto?url=CAESYgHEIkXXgfzDgPvNayCqQ-vSiI85Dt1mLqusvnCcPjzhGINdFCjM7yVGWWaQNB282pxZzm4YdNdyi_bph5xr7TxFcKtswW2JJbR7ClR0-IY8iSsU1Drntc24nTlD-4k9Ffp9), [4] (/goto?url=CAESjAEBxCJF1xZx378_2TpjNNL8Dn-lMfpquotHXtW-hpfyuv17oIGkZ_QyuDAf4Sl6IFC49vkKqT6KzZtofG5ueXk293OVeEKScaRak5mrtTVKwIIjJj9N-llGrzhj6u0_w-qvZoCnpV3tTNn6j1QsPxq6CtRSf9ZrJowaYN2jZQv6c6MvhQJBj4x8qf6oiQ)

Core Components of an Agent Harness

• Instructions & Context (AGENTS.md, CLAUDE.md, skills): Project rules, conventions, and workflows that guide the agent without overloading a single giant prompt. [1] (/goto?url=CAEScAHEIkXXqvtsmTRjL8nyAfLzxaPJuzX1uN0Ih-Uz-rZtaECy3oN1GbIKBI2U3qIwS5UwdW8EVDoPSAxKtvdKgvLkEJs-ztQ7IX1R5JS0OZiMIKmtICjeSPcFUC9FRR_PvoqcwQpK6vmI2T-bprvZJs8), [2] (/goto?url=CAEScgHEIkXX7l-K4tRE9LkVi_Adwzt2jYRGAbDWW0NXrQfBBXpxUaSx-y8m6aeBeztD26v7gAsxUlv-vUt2khNayn1-_tu8XwhsPEZXkSWizNPSYSyija7KiZ8hku0kw5BVEZ_-yyJ1UHh-FhO4xDrhtzYMJg), [3] (/goto?url=CAESjAEBxCJF1xZx378_2TpjNNL8Dn-lMfpquotHXtW-hpfyuv17oIGkZ_QyuDAf4Sl6IFC49vkKqT6KzZtofG5ueXk293OVeEKScaRak5mrtTVKwIIjJj9N-llGrzhj6u0_w-qvZoCnpV3tTNn6j1QsPxq6CtRSf9ZrJowaYN2jZQv6c6MvhQJBj4x8qf6oiQ)
• Tools & Runtime Loop: The execution loop, file/terminal/API tools, and state-tracking mechanisms (such as progress logs or task lists) that keep multi-step and multi-session work coherent. [1] (/goto?url=CAESWAHEIkXXyPi5YToBFIcjGCbRiaHobMhAu0pRHcJSLjABv_u0D_GXewBXHF6a4D_RrYbH6zjiPaVxvXdoyJzykfRwxpOCByt-XcRSfXKAM00r4iSl_EyOZ7k), [2] (/goto?url=CAESjAEBxCJF1xZx378_2TpjNNL8Dn-lMfpquotHXtW-hpfyuv17oIGkZ_QyuDAf4Sl6IFC49vkKqT6KzZtofG5ueXk293OVeEKScaRak5mrtTVKwIIjJj9N-llGrzhj6u0_w-qvZoCnpV3tTNn6j1QsPxq6CtRSf9ZrJowaYN2jZQv6c6MvhQJBj4x8qf6oiQ), [3] (/goto?url=CAEScAHEIkXXqvtsmTRjL8nyAfLzxaPJuzX1uN0Ih-Uz-rZtaECy3oN1GbIKBI2U3qIwS5UwdW8EVDoPSAxKtvdKgvLkEJs-ztQ7IX1R5JS0OZiMIKmtICjeSPcFUC9FRR_PvoqcwQpK6vmI2T-bprvZJs8)
• Feedback & Verification Loops: Linters, type-checkers, unit/end-to-end tests, architectural checks, and evaluation hooks that catch errors and prevent agents from stopping prematurely. [1] (/goto?url=CAESjAEBxCJF1xZx378_2TpjNNL8Dn-lMfpquotHXtW-hpfyuv17oIGkZ_QyuDAf4Sl6IFC49vkKqT6KzZtofG5ueXk293OVeEKScaRak5mrtTVKwIIjJj9N-llGrzhj6u0_w-qvZoCnpV3tTNn6j1QsPxq6CtRSf9ZrJowaYN2jZQv6c6MvhQJBj4x8qf6oiQ), [2] (/goto?url=CAEScgHEIkXX7l-K4tRE9LkVi_Adwzt2jYRGAbDWW0NXrQfBBXpxUaSx-y8m6aeBeztD26v7gAsxUlv-vUt2khNayn1-_tu8XwhsPEZXkSWizNPSYSyija7KiZ8hku0kw5BVEZ_-yyJ1UHh-FhO4xDrhtzYMJg), [3] (/goto?url=CAEScAHEIkXXqvtsmTRjL8nyAfLzxaPJuzX1uN0Ih-Uz-rZtaECy3oN1GbIKBI2U3qIwS5UwdW8EVDoPSAxKtvdKgvLkEJs-ztQ7IX1R5JS0OZiMIKmtICjeSPcFUC9FRR_PvoqcwQpK6vmI2T-bprvZJs8)
• Safety, Permissions & Observability: Sandboxes, approval gates, traces, and logs to contain risk, inspect failures, and audit actions. [1] (/goto?url=CAESfwHEIkXXnIS_YpzIkNajUVj0GRLquhOzUT8IobSpmvOo3jpxd4heK5fOEuWS45bNqwkSrrupx3T_MXGH-0Dwxw9PuPAyqF8Ys13HBIPbf1s6xYtWEKuAHsLVJKZ769VLqUsl03Gk40-TPiDv6HKzjTY1cI4r2g6UphuvDHw3aIE), [2] (/goto?url=CAESjAEBxCJF1xZx378_2TpjNNL8Dn-lMfpquotHXtW-hpfyuv17oIGkZ_QyuDAf4Sl6IFC49vkKqT6KzZtofG5ueXk293OVeEKScaRak5mrtTVKwIIjJj9N-llGrzhj6u0_w-qvZoCnpV3tTNn6j1QsPxq6CtRSf9ZrJowaYN2jZQv6c6MvhQJBj4x8qf6oiQ), [3] (/goto?url=CAEScAHEIkXXqvtsmTRjL8nyAfLzxaPJuzX1uN0Ih-Uz-rZtaECy3oN1GbIKBI2U3qIwS5UwdW8EVDoPSAxKtvdKgvLkEJs-ztQ7IX1R5JS0OZiMIKmtICjeSPcFUC9FRR_PvoqcwQpK6vmI2T-bprvZJs8)

Harness Engineering vs. Related Terms

• Prompt engineering: Crafting the instructions or inputs given to a model.
• Context engineering: Curating and managing what information enters the model's context window; harness engineering often acts as a practical, runtime-focused form of this for agents.
• Harness.io (CI/CD): A separate DevOps software platform for continuous integration, delivery, and feature flags, distinct from AI agent harness engineering. [1] (/goto?url=CAESiQEBxCJF1yqiZ3oJXh0dL4OzkZWeeblhGBtiRQ8idhgj8J_w9Dsk8QTqLHM3rYV32Xehlc4HvayYeIR60EWeSJhlE0-KejXNotCciBsbJlBCMmJhtWcV7yGAPoZlCr49HMgYPR09luu9EfuLuKo3nUP4AWMwfqL3uGP7nHaHzAmZUUdreSYsFcNIEQ), [2] (/goto?url=CAESYgHEIkXXgfzDgPvNayCqQ-vSiI85Dt1mLqusvnCcPjzhGINdFCjM7yVGWWaQNB282pxZzm4YdNdyi_bph5xr7TxFcKtswW2JJbR7ClR0-IY8iSsU1Drntc24nTlD-4k9Ffp9), [3] (/goto?url=CAESqgEBxCJF1_TK2iQQe5SUYf_7uQJKwvgQ2I0zU3c3mahLb7f7VyCB2SBK_Q9m1oUWsMipFrgSQc1Fvl_VZUGvQEtIpT_gLTcWTEbuv7zBpO0kgjwKYCG45yvTDFkpOHBILxasBC0G-N23kwUg4iQcU6CznkunxFDIQoZsxXF8P_Yn7YPFz6t8ZdkuVdQLSZBO64QF34IX1LGZFwWDC4C0H8w18JSHNw72S1NU6A), [4] (/goto?url=CAEScgHEIkXX7l-K4tRE9LkVi_Adwzt2jYRGAbDWW0NXrQfBBXpxUaSx-y8m6aeBeztD26v7gAsxUlv-vUt2khNayn1-_tu8XwhsPEZXkSWizNPSYSyija7KiZ8hku0kw5BVEZ_-yyJ1UHh-FhO4xDrhtzYMJg), [5] (/goto?url=CAESWwHEIkXXb98VsnDUYp4IaMzUox0acdYr8j5GjH-wj-elQp5H_ocSwvEjxM4OMg34MEf5O_voFzr-lu6IPQHm6dN_BFsouJpD9dUy5sR-VFwjeDbcanPzBHlBGXc)
You can explore structured lessons, templates, and architecture maps through Learn Harness Engineering and Harness Engineering. [1] (/goto?url=CAEScAHEIkXXqvtsmTRjL8nyAfLzxaPJuzX1uN0Ih-Uz-rZtaECy3oN1GbIKBI2U3qIwS5UwdW8EVDoPSAxKtvdKgvLkEJs-ztQ7IX1R5JS0OZiMIKmtICjeSPcFUC9FRR_PvoqcwQpK6vmI2T-bprvZJs8), [2] (/goto?url=CAESVwHEIkXXxcih7sk_Vhy-Pw5evswi3E1pGbQ9kkQ8NBBErk03QXNLLpdTrTAks9nb5jO3Fzk5UK8macRBpHG17Yt7twyzN3YJNjFA7H4pi0OGapZMF5a6nA)
Are you looking to set up a harness for a coding agent (like Claude Code or Codex), build a custom agent runtime, or compare harness patterns? Sharing your stack or workflow can help tailor concrete steps.
