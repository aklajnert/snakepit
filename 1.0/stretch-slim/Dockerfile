FROM debian:stretch-slim

ENV PATH /usr/local/bin:$PATH

ENV LANG C.UTF-8
ENV PYTHONIOENCODING UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
		ca-certificates \
		netbase \
		wget \
	&& rm -rf /var/lib/apt/lists/*

ADD install_python*.sh ./

RUN wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'
ENV PYTHON_PIP_VERSION 19.0.3

RUN /bin/bash install_python3.sh 3.5.7 97FC712E4C024BBEA48A61ED3A5CA953F73C700D
RUN /bin/bash install_python3.sh 3.6.8 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
RUN /bin/bash install_python3.sh 3.7.3 0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
RUN /bin/bash install_python2.sh 2.7.16 C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF

RUN rm install_python2.sh install_python3.sh get-pip.py


CMD ["/bin/bash"]
