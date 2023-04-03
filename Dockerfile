FROM tiangolo/uvicorn-gunicorn:python3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["gunicorn"  , "--bind", "0.0.0.0:8080", "main:app"]