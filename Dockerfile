FROM tiangolo/uvicorn-gunicorn:python3.10
COPY . /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt
EXPOSE 8000
CMD ["gunicorn"  , "--bind", "0.0.0.0:8080", "main:app"]