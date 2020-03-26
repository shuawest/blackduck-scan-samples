#!/bin/sh

pushd oss-camel-rest
mvn clean install -DskipTests=true
popd

pushd rht-fuse-rest
mvn clean install -DskipTests=true
popd

pushd oss-drools-app
pushd oss-drools-app-model
mvn clean install -DskipTests=true
popd
pushd oss-drools-app-kjar
mvn clean install -DskipTests=true
popd
pushd oss-drools-app-service
mvn clean install -DskipTests=true
popd
popd

pushd rht-decision-app
pushd rht-decision-app-model
mvn clean install -DskipTests=true
popd
pushd rht-decision-app-kjar
mvn clean install -DskipTests=true
popd
pushd rht-decision-app-service
mvn clean install -DskipTests=true
popd
popd

pushd oss-jbpm-app
pushd oss-jbpm-app-model
mvn clean install -DskipTests=true
popd
pushd oss-jbpm-app-kjar
mvn clean install -DskipTests=true
popd
pushd oss-jbpm-app-service
mvn clean install -DskipTests=true
popd
popd

pushd rht-pam-app
pushd rht-pam-app-model
mvn clean install -DskipTests=true
popd
pushd rht-pam-app-kjar
mvn clean install -DskipTests=true
popd
pushd rht-pam-app-service
mvn clean install -DskipTests=true
popd
popd

rm -rf output
mkdir output
cp oss-camel-rest/target/oss-camel-rest*.jar ./output/
cp rht-fuse-rest/target/rht-fuse-rest*.jar ./output/
cp oss-drools-app/oss-drools-app-service/target/oss-drools-app*.jar ./output/
cp rht-decision-app/rht-decision-app-service/target/rht-decision-app*.jar ./output/
cp oss-jbpm-app/oss-jbpm-app-service/target/oss-jbpm-app*.jar ./output/
cp rht-pam-app/rht-pam-app-service/target/rht-pam-app*.jar ./output/
