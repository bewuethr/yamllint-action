FROM python:3.8.2-alpine3.11
RUN pip install yamllint==1.21.0
COPY runyamllint /runyamllint
ENTRYPOINT ["/runyamllint"]
