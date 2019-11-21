FROM rasa/rasa:1.4.0-spacy-en

ENTRYPOINT ["rasa"]
CMD ["run", "--enable-api", "--endpoints", "endpoints-prod.yml"]
