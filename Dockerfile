FROM python:3.11.0-alpine3.15
RUN python -m pip install --root-user-action=ignore yamllint==1.28.0
COPY runyamllint /runyamllint
ENTRYPOINT ["/runyamllint"]
