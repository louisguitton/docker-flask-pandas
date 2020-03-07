# docker-flask-pandas

> A starter image useful for my ML backend services

![Python versions](https://img.shields.io/badge/python-3.8-blue?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/louisguitton/flask-pandas?style=flat-square)

## Example usage

```docker
FROM louisguitton/flask-pandas

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY web web

EXPOSE 5000
CMD gunicorn web.run:app --workers 1  --worker-class sync --timeout 90 -b 0.0.0.0:5000
```
