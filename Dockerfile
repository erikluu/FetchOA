FROM python:3.9

WORKDIR /app

COPY model.ipynb /app
COPY daily_data.csv /app

RUN pip install jupyter numpy pandas torch matplotlib

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
