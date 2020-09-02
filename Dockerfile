FROM python:3.8-alpine as base
RUN pip install -r requirements.txt

WORKDIR /carta/devops
ENV PATH="/carta/devops:${PATH}"

COPY . .
RUN mv secret.txt /var/secret.txt

CMD [ "carta-devops" ]
