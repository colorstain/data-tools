FROM python:2.7

MAINTAINER Aldo <colorstain@gmail.com>

ENV PROJECT_DIR /opt/code
ENV NOTEBOOK_PORT 8888
ENV JUPYTER_CONFIG_DIR ${PROJECT_DIR}/config
ENV DATA_DIR /opt/data

RUN mkdir -p $PROJECT_DIR

COPY . $PROJECT_DIR
VOLUME $DATA_DIR
EXPOSE $NOTEBOOK_PORT

WORKDIR $PROJECT_DIR
RUN pip install -r requirements.txt

CMD scripts/notebook.sh
