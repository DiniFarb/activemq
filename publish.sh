#!/bin/bash

# creat array with activemy versions from 5.16.0 to 5.16.7
activemq_java8_versions=(5.16.0 5.16.1 5.16.2 5.16.3 5.16.4 5.16.5 5.16.6 5.16.7)

for version in "${activemq_java8_versions[@]}" ; do
    echo "Publishing version $version"
    docker build -t dinifarb/activemq:$version --build-arg ACTIVEMQ_VERSION=$version .
    docker push dinifarb/activemq:$version
done

activemq_java11_versions=(5.17.0 5.17.1 5.17.2 5.17.3 5.17.4 5.17.5 5.17.6 5.18.0 5.18.1 5.18.2 5.18.3)

for version in "${activemq_java11_versions[@]}" ; do
    echo "Publishing version $version"
    docker build -t dinifarb/activemq:$version --build-arg ACTIVEMQ_VERSION=$version --build-arg JAVA_VERSION=11 .
    docker push dinifarb/activemq:$version
done

activemq_java17_versions=(6.0.0 6.0.1)

for version in "${activemq_java17_versions[@]}" ; do
    echo "Publishing version $version"
    docker build -t dinifarb/activemq:$version --build-arg ACTIVEMQ_VERSION=$version --build-arg JAVA_VERSION=17 .
    docker push dinifarb/activemq:$version
done

