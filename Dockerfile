FROM alpine:3.9

ENV PATH /usr/local/bin:$PATH
ENV LANG C.UTF-8

RUN apk add --no-cache ca-certificates

ADD install_python.sh ./

RUN wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'
ENV PYTHON_PIP_VERSION 19.0.3

RUN /bin/sh install_python.sh 3.5.7 97FC712E4C024BBEA48A61ED3A5CA953F73C700D
RUN /bin/sh install_python.sh 3.6.8 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D

RUN rm install_python.sh get-pip.py


CMD ["python3"]
