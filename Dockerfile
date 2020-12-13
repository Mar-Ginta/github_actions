FROM python:3.7

RUN pip install fastapi uvicorn -i https://pypi.douban.com/simple

EXPOSE 8080

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]