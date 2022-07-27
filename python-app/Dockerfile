FROM python:3.11.0a7-alpine3.15

WORKDIR /demo-app

COPY . .
RUN pip install --upgrade pip   
RUN pip install tornado
RUN pip install redis

ENV ENVIRONMENT=PROD
ENV HOST=localhost
ENV PORT=8000
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
ENV REDIS_DB=0

EXPOSE 8000

CMD ["python3", "hello.py"]

