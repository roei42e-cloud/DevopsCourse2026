FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -e .

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

RUN flask init-db

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
