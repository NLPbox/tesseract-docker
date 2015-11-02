FROM ubuntu:14.04
MAINTAINER Arne Neumann <nlpdocker.programming@arne.cl>

RUN apt-get update && apt-get install -y gcc make wget

WORKDIR /opt

# https://github.com/tesseract-ocr/tesseract/releases/latest redirects to ...
# https://github.com/tesseract-ocr/tesseract/releases/tag/3.04.00
RUN wget https://github.com/tesseract-ocr/tesseract/archive/3.04.00.tar.gz
RUN tar zxf 3.04.00.tar.gz

WORKDIR /opt/tesseract-3.04.00
