FROM alpine:3.11

ENV PATH /usr/local/bin:$PATH
ENV LANG C.UTF-8

RUN apk add --no-cache ca-certificates

ADD install_python.sh ./

RUN wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'
ENV PYTHON_PIP_VERSION 20.0.2

RUN /bin/sh install_python.sh 2.7.17 C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
RUN /bin/sh install_python.sh 3.5.9 97FC712E4C024BBEA48A61ED3A5CA953F73C700D
RUN /bin/sh install_python.sh 3.6.9 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
RUN /bin/sh install_python.sh 3.7.7 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
RUN /bin/sh install_python.sh 3.8.2 E3FF2839C048B25C084DEBE9B26995E310250568

RUN rm install_python.sh get-pip.py


CMD ["/bin/ash"]
