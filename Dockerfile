FROM python:3.12.0a2-alpine3.15
RUN python -m pip install --root-user-action=ignore --no-cache-dir yamllint==1.35.1
COPY runyamllint /runyamllint
ENTRYPOINT ["/runyamllint"]
