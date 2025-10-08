# Security

security.md

# .NET Security

.NET was designed as a safe platform from its initial design. In particular, it was intended to 
enable a new generation of applications (web, desktop and mobile), which inherently need to accept 
untrusted input in the world’s most hostile computing environment (the Internet).

Forms of safety:

*   Type safety

    An arbitrary type cannot be used in place of another, avoiding undefined behavior.

*   Memory safety 

    Only allocated memory is ever used, for example a variable either references a live object or is 
    `null`.

*   Concurrency or thread safety 
    
    Shared data cannot be accessed in a way that would result in undefined behavior.

SQL Injection
Session Hijacking
Cross-Site Scripting (XSS)
Broken Authentication
Broken Object Level Authorization (BOLA)
Server-Side Request Forgery (SSRF)

Audit.Net

.NET Base Class Library (BCL) is also designed in safe manner, but some usage patterns might lead to 
security issues:


Audit.Net

    *   https://github.com/sonatype-nexus-community/audit.net

    *   https://marketplace.visualstudio.com/items?itemName=VorSecurity.AuditNet

    *   outdated

DevAudit

    *   https://github.com/sonatype-nexus-community/DevAudit#readme

    *   outdated

    *   only .NET Framework and Mono support

    *   no .NET (Core) support