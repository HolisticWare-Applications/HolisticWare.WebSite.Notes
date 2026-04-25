Java on Mac

java-on-mac.md

*   https://mkyong.com/java/how-to-install-java-on-mac-osx/


```
brew search java      
brew info java
brew install openjdk@8
sudo \
    ln -sfn \
    /usr/local/opt/openjdk@8/libexec/openjdk.jdk \
    /Library/Java/JavaVirtualMachines/openjdk-8.jdk  

java -version
ls -lsah /Library/Java/JavaVirtualMachines/               
```