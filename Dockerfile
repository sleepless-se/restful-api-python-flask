FROM tensorflow/tensorflow:latest-py3
RUN apt-get update && apt-get upgrade && apt-get install vim git
RUN apt-get install -y -q build-essential python-pip python-dev python-simplejson git
RUN mkdir api
COPY .:/api
RUN pip install --upgrade pip && pip install 
WORKDIR /api
CMD ["python","app.py"]
