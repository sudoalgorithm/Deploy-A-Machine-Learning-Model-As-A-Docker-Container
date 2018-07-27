FROM python:2.7
LABEL maintainer="Kunal Malhotra kunal.malhotra1@ibm.com"
RUN apt-get update
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN python -m textblob.download_corpora
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]