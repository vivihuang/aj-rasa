FROM rasa/rasa:1.4.0-spacy-en

WORKDIR /app

COPY endpoints-prod.yml endpoints-prod.yml
COPY credentials.yml credentials.yml

ENTRYPOINT ["rasa"]
CMD ["run", "--enable-api", "--endpoints", "endpoints-prod.yml"]
