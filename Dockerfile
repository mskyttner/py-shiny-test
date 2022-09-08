FROM python:3.11-rc-bullseye

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

WORKDIR /code/app
# serve from port 8080
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]

# shinylive from static dir
#WORKDIR /code
#RUN shinylive export app site
#CMD ["python3", "-m", "http.server", "--directory", "site", "8080"]

