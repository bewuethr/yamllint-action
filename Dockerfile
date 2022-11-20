FROM python:3.11.0-alpine3.15
RUN pip install yamllint==1.24.2
COPY runyamllint /runyamllint
ENTRYPOINT ["/runyamllint"]
