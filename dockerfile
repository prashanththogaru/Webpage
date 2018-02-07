FROM ubuntu:latest
MAINTAINER Prashanth Thogaru "prashanththogaru@outlook.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /py
WORKDIR /py
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["run.py"]
