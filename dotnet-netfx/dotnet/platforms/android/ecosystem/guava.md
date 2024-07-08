# Guava


<meta
    name="description"
    content="Guava"
    />
<meta
    name="keywords"
    content="guava, android"
    />
<meta
    name="tags"
    content="guava, android"
    />
<meta
    name="author"
    content="Miljenko Cvjetko (moljac, mel)"
    />
<meta 
    property="og:title" 
    content="Guava" />
<meta 
    property="og:description" 
    content="Guava" />

---
title: Guava
tags: guava, android
author:
file: guava.md
layout: post
---


Why guava..-android and not the -jre?

    *   https://github.com/google/guice/issues/1187

*   https://stackoverflow.com/questions/62634934/gradle-transient-dependency-resolution-how-to-generically-prefer-guava-jre-ov

*   https://github.com/google/guava/wiki/ReleasePolicy#flavors

Guava for Android and Guava for the JRE need separate Maven namespaces

    https://github.com/google/guava/issues/2914

4.2.1 brings in Android Guava, incompatible/trumps regular Guava? #1207

    https://github.com/google/guice/issues/1207#issuecomment-423560702

https://plugins.gradle.org/plugin/de.jjohannes.missing-metadata-guava

Publish Gradle Module Metadata with Variants #3683

    https://github.com/google/guava/pull/3683


https://stackoverflow.com/questions/14978699/is-it-a-good-idea-to-use-google-guava-library-for-android-development

https://stackoverflow.com/questions/57869529/in-gradle-how-should-we-target-both-android-and-jre

Forcing guava JRE versions in Android projects with new metadata is too tedious #6801

    https://github.com/google/guava/issues/6801

https://groups.google.com/g/guava-discuss/c/r6gJrMudYr4
