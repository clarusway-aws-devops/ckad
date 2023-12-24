FROM python:alpine
RUN pip install flask
ENV APP_NAME=myapp
COPY . /app
WORKDIR /app
EXPOSE 80
CMD python ./app.py