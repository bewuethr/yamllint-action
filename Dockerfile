FROM python:3.8.7-alpine3.11
RUN pip install yamllint==1.24.2
COPY runyamllint /runyamllint
ENTRYPOINT ["/runyamllint"]
