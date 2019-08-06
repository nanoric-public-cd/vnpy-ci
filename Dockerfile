FROM gcc:7 as gcc
FROM python:3.7 as python

#COPY --from=python /usr/local /usr/local
#COPY --from=python /usr/lib /usr/lib

COPY --from=gcc /usr/local /usr/local
COPY --from=gcc /usr/share /usr/share

RUN apt update
RUN apt install -y libgl1-mesa-glx
