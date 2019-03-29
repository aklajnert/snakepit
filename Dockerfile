FROM alpine:3.9

ENV PATH /usr/local/bin:$PATH
ENV LANG C.UTF-8

RUN apk add --no-cache ca-certificates

ADD install_python.sh ./

RUN wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'
ENV PYTHON_PIP_VERSION 19.0.3

# python 3.5.7
ENV GPG_KEY 97FC712E4C024BBEA48A61ED3A5CA953F73C700D
ENV PYTHON_VERSION 3.5.7

RUN /bin/sh install_python.sh


# python 3.6.8
ENV GPG_KEY 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
ENV PYTHON_VERSION 3.6.8

RUN /bin/sh install_python.sh


CMD ["python3"]
