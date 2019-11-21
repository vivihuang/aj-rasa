FROM python:3.6-slim

SHELL ["/bin/bash", "-c"]

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

RUN apt-get update -qq && \
  apt-get install -y --no-install-recommends \
  build-essential \
  wget \
  openssh-client \
  graphviz-dev \
  pkg-config \
  git-core \
  openssl \
  libssl-dev \
  libffi6 \
  libffi-dev \
  libpng-dev \
  curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  mkdir /app

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

RUN python -m spacy download en_core_web_md
RUN python -m spacy link en_core_web_md en
RUN python -m spacy download en_trf_distilbertbaseuncased_lg

COPY . /app

EXPOSE 5005

ENTRYPOINT ["rasa"]
CMD ["run", "--enable-api", "--endpoints", "endpoints-prod.yml"]
