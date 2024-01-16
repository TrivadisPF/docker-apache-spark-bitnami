FROM bitnami/spark:3.5.0

LABEL maintainer="Gudio Schmutz <schmutz68@gmail.com>"

ENV SPARK_MASTER_NAME spark-master
ENV SPARK_MASTER_PORT 7077

COPY submit.sh /

CMD ["/bin/bash", "/submit.sh"]
