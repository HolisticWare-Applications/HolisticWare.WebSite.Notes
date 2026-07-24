# AI Agent Architecture

ai-agents-architecture.md

*   https://github.com/Drobiazkin/ai-agent-architecture

1. The model as a component	

    Tokenization, embeddings, attention, dense vs. MoE, the generation loop, decoding strategies, context-window failure modes, hallucination — plus the economics: cost, latency, determinism, reliability, hosted vs. self-host

2. The interface to the model	

    Prompt engineering as contract design; context engineering and its pattern catalog; structured output and constrained decoding
3. Grounding: 

    RAG	The retrieval-pattern ladder (naive → hybrid → reranking → GraphRAG → agentic → adaptive), 
    vector indexes and ANN internals, chunking, and RAG evaluation

4.  Action: agents	

    The agent as a distributed system; the pattern catalog (chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer); tool calling as contract; memory and reasoning strategies; multi-agent systems and a full failure taxonomy

5.  Integration	

    Model Context Protocol (MCP) end to end; assembling the stack on the JVM

6.  Production

    Building an eval system; observability and OpenTelemetry GenAI conventions; security — prompt 
    injection, the lethal trifecta, defense in depth; cost and latency engineering

7. Your own models

    Fine-tuning (LoRA, QLoRA, DoRA, RLHF/DPO, distillation); deploying open models (PagedAttention, 
    continuous batching, quantization, speculative decoding); pre-training and scaling laws

8.  Synthesis

    A reference architecture, organizational adoption and governance, and a full worked example with an architecture decision record package