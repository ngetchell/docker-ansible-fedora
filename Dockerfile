FROM fedora:latest

RUN dnf install python-pip -y

RUN pip install ansible \
    && rm -rf ~/.cache/*

CMD ["/bin/bash"]