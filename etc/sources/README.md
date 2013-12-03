Sirocco sources goes here, build.sh script will clone the sirocco repository and compile all ie :


    git clone --recursive git@github.com:ow2-sirocco/sirocco.git
    cd sirocco; mvn clean install -Dmaven.test.skip -Dmaven.javadoc.skip