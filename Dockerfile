FROM python:3.7

COPY ./ /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 9011

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "9011"]
