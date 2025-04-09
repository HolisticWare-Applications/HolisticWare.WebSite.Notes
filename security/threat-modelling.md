# Threat Modelling

threat-modelling.md

*   https://en.wikipedia.org/wiki/Threat_model

*   https://owasp.org/www-community/Threat_Modeling

*   What is Threat Modeling? (Threat Modeling Explained)

    *   https://www.youtube.com/watch?v=KOq56Iyw8WY

        *   proactive process to identify, analyze/evaluate and mitigate threats

        *   
*   STRIDE Threat Modeling for Beginners - In 20 Minutes
    
    *   https://www.youtube.com/watch?v=rEnJYNkUde0

    *   OWASP Threat Modeling Process - 
        
        *   https://owasp.org/www-community/Threat_Modeling_Process

        *   Completed AI application threat model

        *   https://aivillage.org/large%20language%20models/threat-modeling-llm/

        *   Draw.io Desktop

            *   https://github.com/jgraph/drawio-desktop

        *   Software Development Lifecycle (SDLC)

    1.  DFD Datav Flow Diagrams

    2.  Label Trusts

    3.  ID Threaths

    framework

        STRIDE

            characteristics of the system (strngths and weakness)

                Spoofing / Authentication

                    A threat action aimed at accessing the user of another’s credentials, such as username and password

                Tampering / Integrity

                    A threat action that maliciously changes or modifies persistent data, such as database records or data
                    in transit

                Repudiation / Non-repudiation

                    A threat action aimed at performing actions that lack the ability to be traced back to the malicious 
                    user.

                Info Disclosure / Confidentiality

                    A threat action with the intention of reading information that a user was not authorized to access.

                Denial of Service / Availability
                
                    A threat action attempting to prevent or deny legitimate access to valid users.

                Elevation / Authorization

                    A threat action attempting to gain privileged access to a resource, typically to further unauthorized access to additional resources.

            when

                SDL Software Development Lifecycle

                    1.  Planning

                    2.  Analysis

                    3.  Design

                    4.  Implementation

                    5.  Testing & Integration

                    6.  Maintenance

        PASTA


Threat modeling is a structured approach to 

    identifying, 
    
    evaluating, and 
    
    mitigating 
    
potential security risks to a system. 

It involves understanding 

    the system's design, 
    
    identifying potential threats and 
    
    vulnerabilities, and 
    
implementing measures to 

    reduce or 
    
    eliminate 
    
risks. 

Steps

    Understanding the System: 
    
        Define the scope, architecture, and components of the system.

    Identifying Threats: 
    
        Use frameworks like STRIDE (Spoofing, Tampering, Repudiation, Information Disclosure, Denial of Service, 
        Elevation of Privilege) to categorize potential threats.

    Assessing Risks: 
    
        Evaluate the impact and likelihood of each threat to prioritize mitigation strategies.

    Mitigation Planning: 
    
        Develop and implement measures to address identified threats.

    Validation and Iteration: 
    
        Continuously monitor and update the threat model as the system evolves.

Threat modeling is an essential practice in secure software development to 

    proactively address vulnerabilities and 
    
    protect against attacks.

A threat model for Android focuses on 

    identifying, 
    
    evaluating, and 
    
    mitigating 
security risks specific to Android applications and the Android operating system. 

key components of an Android-specific threat model:

1. Assets to Protect

    User Data: 
    
        Personal information, 
        
        credentials, 
        
        payment data
        , etc.

    Application Logic: 
    
        Proprietary algorithms, 
        
        intellectual property, 
        etc.

    System Resources: 
    
        Camera, 
        
        microphone, 
        
        GPS, 
        
        sensors
        
        etc.

    Communication Channels: 
    
        Network traffic, 
        
        APIs, 
        
        etc.

2. Potential Threats
Data Leakage: Exposing sensitive data through logs, backups, or insecure storage.
Unauthorized Access: Exploiting weak authentication or poor permission handling.
Reverse Engineering: Extracting sensitive code or data from the APK.
Malware and Trojans: Injecting malicious code.
Network Attacks: Interception of network traffic via MITM attacks or insecure protocols.
Privilege Escalation: Gaining unauthorized access to system resources.
3. Attack Vectors
Insecure APIs: Poorly secured backend APIs used by the app.
Untrusted Input: Code injection, SQL injection, or malicious input data.
Third-Party Libraries: Vulnerabilities in external dependencies.
Device Vulnerabilities: Exploiting OS weaknesses or outdated Android versions.
4. Mitigation Strategies
Secure Data Storage: Use encrypted shared preferences or databases.
Authentication and Authorization: Implement strong authentication mechanisms like OAuth, biometrics, or 2FA.
Obfuscation: Use tools like ProGuard or R8 to obfuscate code.
Secure Communication: Employ HTTPS/TLS for all network traffic.
Minimized Permissions: Request only the permissions required for the app’s functionality.
Regular Updates: Patch vulnerabilities in the app and third-party libraries.
Code Review: Perform security-focused code reviews and regular penetration testing.
5. Tools and Frameworks
OWASP Mobile Security Testing Guide: To identify common vulnerabilities.
Android Security Libraries: Such as SafetyNet