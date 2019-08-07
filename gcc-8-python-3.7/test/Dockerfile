FROM gcc:8 as gcc
FROM python:3.7 as python

#COPY --from=python /usr/local /usr/local
#COPY --from=python /usr/lib /usr/lib

COPY --from=gcc /usr/local /usr/local
COPY --from=gcc /usr/share /usr/share

RUN apt update
RUN apt install -y libgl1-mesa-glx

RUN pushd /tmp \
    wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz \
    tar -xf ta-lib-0.4.0-src.tar.gz \
    cd ta-lib \
    ./configure --prefix=$prefix \
    make -j \
    make install
