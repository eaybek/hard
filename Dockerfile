FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/hard/hard/ /root/packages/hard/
WORKDIR /root/packages/hard
RUN pip3 install /root/packages/hard

CMD ["python3","test/hard.py"]


