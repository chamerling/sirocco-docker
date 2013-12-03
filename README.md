# OW2 Sirocco using Docker.io

Install an OW2 Sirocco Application and required dependencies on Ubuntu with default configuration settings.

## Howto

### Install

#### From local sources

    git clone https://github.com/chamerling/sirocco-docker.git
    cd sirocco-docker
    sh ./build.sh
    sh ./run.sh

You will need to have sirocco sources before anything else since we need to compile Sirocco from sources...
    

#### From the docker registry

    docker run -d -t chamerling/sirocco


## License

MIT