FROM tensorflow/tensorflow:1.12.0-py3
# GPU version
# FROM tensorflow/tensorflow:1.12.0-py3
WORKDIR /model
RUN curl https://storage.googleapis.com/bert_models/2018_11_23/multi_cased_L-12_H-768_A-12.zip -o multi_cased_L-12_H-768_A-12.zip  && \
    unzip multi_cased_L-12_H-768_A-12.zip && \
    rm multi_cased_L-12_H-768_A-12.zip
RUN ls
RUN pip install bert-serving-server
COPY ./ /app
COPY ./docker/entrypoint.sh /app
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []
