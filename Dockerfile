FROM python:3.6-alpine
RUN apk update
RUN apk add --upgrade stress-ng

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
