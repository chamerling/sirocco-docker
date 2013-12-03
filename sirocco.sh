#!/bin/bash

ROOT=$PWD
cd etc/sources; git clone --recursive git@github.com:ow2-sirocco/sirocco.git; cd $ROOT
cd etc/sources/sirocco; mvn clean install -Dmaven.test.skip -Dmaven.javadoc.skip