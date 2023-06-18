# jenkins_ansible_maven_tomcat_docker
CI/CD Deployment Using Ansible CM Tool


In worker-node

```
sudo apt install maven
```

From the maven installation we see that the java openjdk version is:

/usr/lib/jvm/java-11-openjdk-amd64/bin/java


Create a java web application. I've followed this article:

https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html

```
mvn archetype:generate -DgroupId=com.mycompany.app \
    -DartifactId=my-app \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DarchetypeVersion=1.4 -DinteractiveMode=false
```





