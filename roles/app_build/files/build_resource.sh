#! /bin/bash

set -x -e
rm -rf /app
mkdir -p /app
cd /app
git clone https://github.com/spring-petclinic/spring-framework-petclinic.git
cd spring-framework-petclinic
sed -i 's/localhost:3306/10.2.1.71:3306/g' pom.xml
