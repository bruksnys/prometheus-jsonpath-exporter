FROM python:3.9.1-alpine

COPY app /opt/prometheus-jsonpath-exporter

RUN pip install -r /opt/prometheus-jsonpath-exporter/requirements.txt

EXPOSE 9158

ENTRYPOINT ["python3", "/opt/prometheus-jsonpath-exporter/exporter.py"]
