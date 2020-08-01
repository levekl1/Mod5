FROM ubuntu
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install requests
COPY . /app
WORKDIR /app
RUN pip3 install -r ./requirements.txt
CMD ["./auth.py"]
