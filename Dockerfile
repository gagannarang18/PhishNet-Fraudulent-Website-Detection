FROM python:3.10-slim
WORKDIR /app
COPY . /app

RUN apt-get update -y && \
    apt-get install -y awscli && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install -r requirements.txt

CMD ["python3", "app.py"]
