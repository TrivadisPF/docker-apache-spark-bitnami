FROM trivadis/spark-template-python:3.5.0
	  
COPY wordcount.py /app/

ENV SPARK_APPLICATION_PYTHON_LOCATION /app/wordcount.py
ENV SPARK_APPLICATION_ARGS "/home/bitnami/spark/README.md"