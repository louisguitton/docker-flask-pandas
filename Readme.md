# docker-flask-pandas

> A starter image useful for my ML backend services

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
