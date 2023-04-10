function checkContainerRunning() {
    docker container ls -q -f name="$1"
}

function pwnenv() {
    if [ $(checkContainerRunning "pwnenv") ]; then
        docker exec -it pwnenv zsh
    else
        docker run --net=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it --rm --name "pwnenv" -v "$(pwd)":/root/data "christoss/pwnenv"
    fi
}

function penenv() {
    if [ $(checkContainerRunning "penenv") ]; then
        docker exec -it penenv bash
    else
        docker run --net=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it --rm --name penenv -v "$(pwd)":/root/data christoss/penenv bash
    fi
}

function stego-toolkit() {
    if [ $(checkContainerRunning "stego-toolkit") ]; then
        docker exec -it stego-toolkit bash
    else
        docker run -it --rm --name "stego-toolkit" -v $(pwd):/data dominicbreuker/stego-toolkit  /bin/bash
    fi
}

function volatility() {
    if [ $(checkContainerRunning "volatility") ]; then
        docker exec -it volatility sh
    else
        docker run -it --rm -v `pwd`:/data --name "volatility" --entrypoint sh blacktop/volatility:plugins
    fi
}

function aflplusplus() {
    if [ $(checkContainerRunning "aflplusplus") ]; then
        docker exec -it aflplusplus bash
    else
        docker run -it --rm -v `pwd`:/data --name "aflplusplus" --entrypoint bash aflplusplus/aflplusplus
    fi
}
