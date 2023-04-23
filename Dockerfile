FROM python:3.9-alpine

ENV WORKDIR /app
RUN mkdir -p $WORKDIR
WORKDIR $WORKDIR
COPY requirements.txt $WORKDIR
RUN pip install -r requirements.txt
COPY . $WORKDIR

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:80"]