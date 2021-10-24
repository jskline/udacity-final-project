
FROM python:3.8

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r ./requirements.txt

COPY ./src/simpleapi /app/simpleapi

EXPOSE 5000

ENV FLASK_APP simpleapi/api
ENTRYPOINT [ "flask", "run", "--port=5000" ]
CMD [ "--host=0.0.0.0" ]