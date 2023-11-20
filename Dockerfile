FROM python:3.12.0

COPY requirements.txt /

RUN pip3 install -r requirements.txt && rm -f requirements.txt

WORKDIR /app

COPY main.py /app

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5005", "--log-level", "info" ]
