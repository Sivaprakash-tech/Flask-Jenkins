FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt

RUN pip install --requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python","flask"]
