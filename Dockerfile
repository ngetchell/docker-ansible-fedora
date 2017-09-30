FROM fedora:latest

RUN dnf install python-pip -y

RUN pip install ansible \
                ansible-lint \
    && rm -rf ~/.cache/*

CMD ["/bin/bash"]