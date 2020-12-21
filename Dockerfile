FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget -y
RUN wget -N https://www.meso-star.com/projects/solstice/downloads/Solstice-0.9.0-GNU-Linux64.tar.gz
RUN tar -xzf Solstice-0.9.0-GNU-Linux64.tar.gz --skip-old-files
RUN rm Solstice-0.9.0-GNU-Linux64.tar.gz

ENV PATH=$PATH:/Solstice-0.9.0-GNU-Linux64/bin
ENV LD_LIBRARY_PATH=Solstice-0.9.0-GNU-Linux64/lib
ENV MAN_PATH=Solstice-0.9.0-GNU-Linux64/share/man
