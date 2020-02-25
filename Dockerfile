FROM python:3.8-slim

LABEL maintainer="admin@guitton.co"


# Install necessary packages, and clear out apt listing to save space.
RUN apt-get update && \
    apt-get -y install curl libpq-dev python-dev postgresql-client && \
    apt-get -y install python build-essential python-pip && \
    apt-get -y install libblas-dev liblapack-dev gfortran && \
    rm -rf /var/lib/apt/lists/*


# Install production python requirements
RUN mkdir -p /opt/pandas/build/
COPY requirements.txt /opt/pandas/build/requirements.txt
RUN pip install -r /opt/pandas/build/requirements.txt
