# Red Hat Scan Samples

Provides a set of sample applications with either Red Hat or the Community equivalent.  

The output springboot uber jar files to be scanned are available in ./output directory.

## Process Automation / JBPM
rht-pam-app and oss-jbpm-app produce a springboot based application with the KIE and JBPM engines embedded.
The Red Hat product version includes the key library `jbpm-bpmn2-7.30.0.Final-redhat-00003.jar`
while the Community version includes `jbpm-bpmn2-7.33.0.Final.jar`

http://people.redhat.com/jowest/blackduck/oss-jbpm-app-service-1.0-SNAPSHOT.jar
http://people.redhat.com/jowest/blackduck/rht-pam-app-service-1.0-SNAPSHOT.jar

## Decision Management / Drools
rht-decision-app and oss-drools-app produce a springboot based application with the KIE and Drools engines embedded.
The Red Hat product version includes the key library `drools-core-7.30.0.Final-redhat-00003.jar`
while the Community version includes `drools-core-7.33.0.Final.jar`

http://people.redhat.com/jowest/blackduck/rht-decision-app-service-1.0-SNAPSHOT.jar
http://people.redhat.com/jowest/blackduck/oss-drools-app-service-1.0-SNAPSHOT.jar		

## Integration / Camel
rht-fuse-rest and oss-camel-rest produce a springboot based application with the Camel engines embedded.
The Red Hat product version includes the key library `camel-core-2.23.2.fuse-750029-redhat-00001.jar`
while the Community version includes `camel-core-2.21.2.jar`

http://people.redhat.com/jowest/blackduck/rht-fuse-rest-1.0.0.jar
http://people.redhat.com/jowest/blackduck/oss-camel-rest-1.0.0.jar

## Docker Images

1. The image `registry.redhat.io/rhpam-7/rhpam-businesscentral-rhel8` will match on both the core drools and jbpm libraries. The WAR file may or may not be exploded, but hopefully blackduck can detect the libraries are present either way.
```
.../business-central.war/WEB-INF/lib/jbpm-bpmn2-7.30.0.Final-redhat-00003.jar
.../business-central.war/WEB-INF/lib/drools-core-7.30.0.Final-redhat-00003.jar
```

2. The image `registry.redhat.io/rhpam-7/rhpam-kieserver-rhel8` should match on both the core drools and jbpm libraries as well, embedded inside the `kie-server.war` file.
