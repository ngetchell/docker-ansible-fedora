FROM fedora:latest

RUN dnf install python-pip -y \
    && dnf clean all

RUN pip install ansible \
                ansible-lint \
    && rm -rf ~/.cache/*

CMD ["/bin/bash"]