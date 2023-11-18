FROM python:3.12.0

COPY requirements.txt /smart-rm/

RUN pip3 install -r /smart-rm/requirements.txt && rm -f /smart-rm/requirements.txt

COPY smart-rm.py /smart-rm/

CMD [ "uvicorn smart-rm:smart-rm:app", "--host", "0.0.0.0", "--port", "5005", "--log-level", "info" ]
