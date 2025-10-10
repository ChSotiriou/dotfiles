function checkContainerRunning() {
    sudo docker container ls -q -f name="$1"
}

function pwnenv() {
    if [ $(checkContainerRunning "pwnenv") ]; then
        sudo docker exec -it pwnenv zsh
    else
        sudo docker run --net=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it --rm --name "pwnenv" -v "$(pwd)":/root/data "christoss/pwnenv"
    fi
}

function penenv() {
    if [ $(checkContainerRunning "penenv") ]; then
        sudo docker exec -it penenv bash
    else
        sudo docker run --net=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it --rm --name penenv -v "$(pwd)":/root/data christoss/penenv bash
    fi
}

function stego-toolkit() {
    if [ $(checkContainerRunning "stego-toolkit") ]; then
        sudo docker exec -it stego-toolkit bash
    else
        sudo docker run -it --rm --name "stego-toolkit" -v $(pwd):/data dominicbreuker/stego-toolkit  /bin/bash
    fi
}

function volatility() {
    if [ $(checkContainerRunning "volatility") ]; then
        sudo docker exec -it volatility sh
    else
        sudo docker run -it --rm -v `pwd`:/data --name "volatility" --entrypoint sh blacktop/volatility:plugins
    fi
}

function aflplusplus() {
    if [ $(checkContainerRunning "aflplusplus") ]; then
        sudo docker exec -it aflplusplus bash
    else
        sudo docker run -it -w /data --rm -v `pwd`:/data --name "aflplusplus" --entrypoint bash aflplusplus/aflplusplus
    fi
}

function mobileSecurityToolkit() {
    if [ $(checkContainerRunning "mobile-security-framework") ]; then
        sudo docker exec -it mobile-security-framework  bash
    else
        sudo docker run -it --rm --rm -v `pwd`:/data --name "mobile-security-framework" -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest
    fi

}

function docker-stop-rm-all() {
    sudo docker ps -q | 
        xargs -d $'\n' sh -c 'for arg do sudo docker kill "$arg"; sudo docker rm "$arg"; done' _
}

alias docker-kill-all='sudo docker ps -q | xargs sudo docker kill'

