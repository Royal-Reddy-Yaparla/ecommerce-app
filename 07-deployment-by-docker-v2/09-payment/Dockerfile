FROM python:3.9.23-alpine3.22
EXPOSE 8080
WORKDIR /opt/server
COPY requirements.txt .
COPY payment.ini .
COPY *.py .
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop \
    && chown -R roboshop:roboshop /opt/server
RUN apk add build-base linux-headers musl-dev python3-dev libffi-dev gcc
RUN pip3 install -r requirements.txt
CMD ["uwsgi", "--ini", "payment.ini"]



















# FROM python:3.9
# EXPOSE 8080
# WORKDIR /opt/server
# COPY requirements.txt .
# COPY *.py .
# COPY payment.ini .
# RUN pip3 install -r requirements.txt
# CMD ["uwsgi", "--ini", "payment.ini"]