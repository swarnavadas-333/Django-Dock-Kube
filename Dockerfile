FROM python:3.13

WORKDIR /app

COPY requirements.txt /app
COPY devops /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt && \
    cd devops

#RUN apt-get update && \
#    apt-get install -y python3 python3-pip && \
#    pip install -r requirements.txt && \
#    cd devops

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]



