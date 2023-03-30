FROM python:3.10
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python3", "server.py"]
 

