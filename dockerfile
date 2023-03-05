FROM python:3.9-slim-buster

WORKDIR /app

RUN pip install flask && \
    pip install cryptography && \
    apt-get update && \
    apt-get install -y openssl

COPY . .

EXPOSE 80 443

CMD ["python", "app.py"]

