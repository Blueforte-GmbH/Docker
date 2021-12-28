# Use a stable python image
FROM python:3.9-slim-bullseye

WORKDIR /code

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Default port for Flask web server 
EXPOSE 5000
COPY . .

CMD ["flask", "run"]