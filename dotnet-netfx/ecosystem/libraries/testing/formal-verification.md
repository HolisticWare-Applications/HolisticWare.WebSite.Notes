# Formal Verification

formal-verification.md

https://www.nuget.org/profiles/alexanderfedin

> .net formal verification

Formal verification for .NET uses mathematical logic and automated theorem provers to prove that compiled code or source code satisfies a given specification across all possible inputs and states, rather than just testing select cases. 

[1] (https://www.youtube.com/watch?v=u_xn5BdJDGI&t=1193)

[2] (https://www.synopsys.com/glossary/what-is-functional-verification.html)

Key Tools and Approaches for .NET

• LeanCIL: A framework that uses the Lean 4 formal verification framework to extract Common Intermediate Language (CIL) from compiled .NET assemblies (C#, F#, etc.) and verify proofs against an explicit instruction model. It allows you to prove method contracts, loop termination, and memory bounds. 

[1] (https://github.com/NethermindEth/LeanCIL)

• Lean 4 C# Semantics Proposals: Community and open-source initiatives—such as the Lean formal semantics for C# discussion on GitHub—work toward establishing a machine-checkable model of C# semantics alongside language specifications. 

[1] (https://github.com/dotnet/csharplang/discussions/10314)

• Deductive Verification & Contract Annotations: Similar to tools in other ecosystems, .NET verification relies on writing logical specifications (preconditions, postconditions, and invariants) and translating code into verification conditions that are checked by automated theorem provers or SMT solvers. 

[1] (https://www.youtube.com/watch?v=u_xn5BdJDGI&t=1193)

How Formal Verification Works in .NET

1. Extraction / Translation: Compiled CIL binaries or annotated source code are translated into a formal mathematical model (such as a representation in Lean 4).

[1] (https://www.youtube.com/watch?v=u_xn5BdJDGI&t=1193)
[2] (https://github.com/NethermindEth/LeanCIL)

2. Specification: Developers write formal theorems or contracts defining expected behaviors (e.g., arithmetic bounds, null safety, or memory preservation)

[1] (https://www.youtube.com/watch?v=u_xn5BdJDGI&t=1193)
[2] (https://github.com/NethermindEth/LeanCIL)

3. Proof & Kernel Check: The theorem prover checks whether the code strictly adheres to the specification or outputs a counterexample if a violation is possible

[1] (https://www.youtube.com/watch?v=u_xn5BdJDGI&t=1193)
[2] (https://github.com/NethermindEth/LeanCIL)

If you'd like, share your specific technical context:
• Are you looking to verify compiled CIL/assemblies or C# source code?
• What specific property (e.g., math calculations, memory safety, loop termination) do you need to prove?
I can provide a tailored solution or point you to the right setup and code pattern.


> both compiled CIL/assemblies and C# source code



When your goal spans both compiled CIL/assemblies and C# source code, formal verification split pathways based on whether you want to reason about the exact instructions the compiler emits or if you want to write verification-aware code from the ground up. [1] (https://github.com/NethermindEth/LeanCIL), [2] (https://www.reddit.com/r/moderndotnet/comments/1xjc4hi/leancil_formal_proofs_for_your_compiled_c_and_f/)
The primary tools and structural trade-offs for handling both levels of the .NET ecosystem include the following:

1. Verification at the Compiled CIL / Assembly Level

Verifying compiled bytecode guarantees that the exact artifacts deployed to production conform to your specifications. This eliminates bugs introduced by compiler optimizations or subtle discrepancies between high-level language sugar and the runtime execution engine. [1] (https://www.reddit.com/r/moderndotnet/comments/1xjc4hi/leancil_formal_proofs_for_your_compiled_c_and_f/), [2] (https://github.com/NethermindEth/LeanCIL)
• LeanCIL: The state-of-the-art framework for .NET assembly verification.
	• How it works: You compile your C# or F# source code into a standard release assembly. LeanCIL extracts the specific Common Intermediate Language (CIL) bytes and maps them against an explicit operational semantic model implemented in the Lean 4 proof assistant.
	• The Proof Workflow: You write theorems and manual mathematical proofs directly against the generated Lean representations of the bytecode.
	• Best Use Cases: High-stakes, allocation-free algorithmic kernels (e.g., cryptographic hashing, binary data parsers using Span<T>, custom big-integer math, and SIMD execution loops) where out-of-bounds safety or calculation correctness is paramount.
	• Trade-off: Because it verifies the exact IL output by Roslyn, upgrading your .NET SDK version might alter the emitted bytecode and invalidate an existing proof, requiring you to rebuild or update the proof file. [1] (https://github.com/NethermindEth/LeanCIL/blob/main/README.md), [2] (https://github.com/NethermindEth/LeanCIL), [3] (https://www.reddit.com/r/moderndotnet/comments/1xjc4hi/leancil_formal_proofs_for_your_compiled_c_and_f/)

2. Verification at the C# Source Code Level

Verifying source code directly allows you to declare logical preconditions, postconditions, and loop invariants alongside your logic.
• CsFv (CsFv.Contracts via NuGet): An active open-source approach to source-level C# validation. It interprets custom contract attributes in your C# methods and auto-generates structured SMT-LIB2 mathematical code, pushing the verification requirements straight to SMT solvers like CVC5 or Z3 to evaluate code logical paths automatically. [1] (https://maxtaylor.dev/posts/2023/05/fstar-leetcode), [2] (https://www-0.nuget.org/packages/CsFv.Contracts/11.2.7-alpha.0.210)
• F* (F-Star): A functional programming language with a built-in verification framework utilizing refinement types. While it isn't standard C#, its translation pipelines allow you to author verification-heavy, mathematically-backed algorithms that explicitly target cleanly formatted C# code (via tools like PAL-CS) or compile safely into compliant .NET bytecode. [1] (https://fstar-lang.org/), [2] (https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/fstar-tr.pdf)
• Verification-Aware Language Target Generators (Dafny): For mission-critical systems where C# code must be perfect, engineers frequently use a verification-native platform like Dafny. Dafny uses an SMT solver to prove your logic and invariants dynamically while you type, and then transpiles directly into clean C# source code. [1] (https://quint.sh/guides/formal-verification-tools)

Direct Architectural Comparison


Metric / Aspect	Compiled CIL Verification (e.g., LeanCIL)	Source Code Verification (e.g., CsFv / Dafny targets)
Primary Target	.dll / .exe intermediate binaries	C# .cs files or code generation models
Trust Boundary	High. Protects against compiler bugs/unexpected optimization quirks.	Moderate. Assumes the Roslyn compiler translates source blocks perfectly.
Automation Level	Interactive/Manual. Requires writing formal proof logic in Lean 4.	Automated. Relies heavily on automated SMT-solvers resolving constraints.
Runtime Features	Best for allocation-free, pointer/span operations, and bitwise math.	Tailored to high-level logic, object contracts, and interface state flows.

To provide a concrete implementation strategy, let me know:
• Is your code a standalone core library (like a custom parser, ledger, or cryptography block) or a large web/enterprise application?
• Are you integrating this into a CI/CD build pipeline?



> my code is both
> 
> *   standalone core library (like a custom parser, ledger, or cryptography block)
> 
> and
> 
> *   large web/enterprise application
> 
> and
> 
> *   it will be integrated into a CI/CD build pipeline


For an architecture that combines a high-assurance standalone core library (parser, ledger, or crypto block) with a large enterprise web application integrated into a CI/CD pipeline, a single verification strategy will not work. A hybrid, decoupled approach is required to balance absolute mathematical proof with enterprise deployment speed.

The Hybrid Blueprint Architectural Design

[ Your Repository ]
    │
    ├── /src/CoreLibrary  ──> Formally Verified (LeanCIL / CsFv / Dafny) ──> Heavy Compute Proofs
    │                                                                           │
    └── /src/WebApp       ──> Standard Architecture (ASP.NET Core)          ──> Rapid Iteration
1. The Core Library (The "Hardened" Layer): Treat this as an isolated assembly. This contains pure, deterministic functions without side effects (no database logic, no HTTP contexts). This is where formal verification is applied.
2. The Web/Enterprise App (The "Orchestration" Layer): This contains controllers, dependency injection, and data fetching. It treats the core library as an unbreachable black box. This layer is tested using standard integration testing and automated end-to-end suites.

Implementing the Two Verification Pathways


Pathway A: C# Source-Level Contracts via CsFv

If you want developers to write C# natively while automatically checking bounds and business logic on every pull request, use source-level translation to SMT solvers.
csharp
using CsFv.Contracts; // Standard Source-Level Validation

public class Ledger
{
    // Postcondition guarantees that a balance cannot drop below zero
    [Ensure("result.Balance >= 0")]
    [Require("amount > 0")]
    public Transaction Debiting(Account account, decimal amount)
    {
        if (account.Balance < amount) 
            throw new InvalidOperationException();
            
        account.Balance -= amount;
        return new Transaction(account.Balance);
    }
}
Use code with caution.

Pathway B: Compiled CIL Verification via LeanCIL

For high-risk cryptographic code, allocation-free parsers (Span<T>), or critical ledger mathematical algorithms, verify the raw bytecode to ensure compiler consistency.
1. Developers write high-performance C# code in /src/CoreLibrary.
2. The code is compiled into standard Common Intermediate Language (CIL).
3. The verification pipeline extracts the bytecode into Lean 4 to run structural proof checks.
lean
-- Conceptual Lean 4 structural check mapping against the CIL model
theorem ledger_no_underflow (state : CilState) (amount : UInt64) :
  interprets_bitcode state → state.balance ≥ amount → (execute_subtraction state amount).balance ≥ 0 := by
  intros
  -- Mathematical resolution proving memory limits and loop invariants
  sorry 
Use code with caution.

Designing the CI/CD Pipeline

To prevent mathematical proof evaluation from slowing down standard development cycles, split your CI/CD pipeline (e.g., GitHub Actions or Azure Pipelines) into parallel, cached verification tracks.
                  ┌───> [Job 1: Run Standard dotnet test & Web App Linters] ──┐
──> [git push] ───┤                                                            ├──> [Merge Gate]
                  └───> [Job 2: Formal Verification Gate (LeanCIL / SMT Solvers)] ┘

GitHub Actions Workflow Example (.github/workflows/verify.yml)

yaml
name: Enterprise High-Assurance Pipeline

on:
  pull_request:
    branches: [ main ]

jobs:
  # Fast feedback loop for the enterprise web application
  build-and-test-app:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Setup .NET
        uses: actions/setup-dotnet@v4
        with:
          dotnet-version: '8.0.x'
      - name: Test Web Application
        run: dotnet test src/WebApp.Tests/ --configuration Release

  # Isolated mathematical verification gate for the core library
  formal-verification:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      # 1. Compile the core binary targeted for verification
      运行: dotnet build src/CoreLibrary/ --configuration Release

      # 2. Cache the SMT/Lean Environments to accelerate sequential builds
      - name: Cache Verification Solvers
        uses: actions/cache@v4
        with:
          path: ~/.elan # For Lean4 components
          key: ${{ runner.os }}-verification-solvers

      # 3. Trigger the verification checks (e.g., pushing to Z3 / CVC5 via CsFv or running LeanCIL)
      - name: Run Formal Proof Solver
        run: |
          echo "Executing formal verification analysis on intermediate language..."
          # Example executing CsFv translation or Lean interactive checks:
          # dotnet tool run csfv-verify --assembly src/CoreLibrary/bin/Release/net8.0/CoreLibrary.dll
Use code with caution.

Strategic Recommendations

• Establish a Proof Threshold: Only formally verify code that is deterministic. Do not attempt to formally verify multi-threaded web infrastructure, database drivers, or HTTP controllers.
• Decouple Execution Speeds: SMT and interactive theorem provers can require substantial processing time. Run basic unit and integration tests first to catch regressions early before executing formal verification steps.
• Manage Dependency Updates Carefully: If using assembly-level verification (LeanCIL), lock down minor versions of the .NET SDK. Even subtle optimization changes in the compiler can modify the emitted intermediate language, which may break established math proofs without changing the behavior of the C# code.
To refine this pipeline configuration:
• Which specific CI platform are you using (GitHub Actions, Azure DevOps, GitLab CI/CD, or Jenkins)?
• Do your core mathematical components contain complex loops or recursive functions that require loop invariants?
