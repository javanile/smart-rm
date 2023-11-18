FROM python:3.12.0

COPY requirements.txt /smart-rm/

RUN pip3 install -r /smart-rm/requirements.txt && rm -f /smart-rm/requirements.txt

COPY smart-rm.py /smart-rm/

CMD [ "python3", "smart-rm/smart-rm.py" ]
