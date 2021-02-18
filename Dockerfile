FROM continuumio/anaconda3:4.4.0
LABEL maintainer="arbaj.khanarbaj45@gmail.com>"
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip
RUN apt-get install -y cython
COPY ./requirements.txt /app/requirements.txt
COPY ./app.py /app/app.py
COPY ./classifier.pkl /app/classifier.pkl
EXPOSE 8000
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD python app.py
