FROM python:3.12-slim

WORKDIR / app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app ./app

EXPOSE 8080
# If you flask app is app/main.py and exposes 'app'
# CMD ["gunicorn", "-b", "0.0.0.0:8080", "app.main:app"] 
CMD ["python", "-m", "app"]