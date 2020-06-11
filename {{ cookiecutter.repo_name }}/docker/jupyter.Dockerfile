FROM jupyter/minimal-notebook

WORKDIR /home

COPY requirements.txt requirements_dev.txt ./

RUN pip install -r requirements.txt -r requirements_dev.txt
