FROM python:slim-bookworm

COPY ./requirements.txt /src/requirements.txt

WORKDIR /src

RUN pip install -r requirements.txt

EXPOSE 8888

ENTRYPOINT [ \
  "jupyter", \
  "notebook", \
  "--ip=0.0.0.0", \
  "--port=8888", \
  "--no-browser", \
  "--allow-root" \
  ]