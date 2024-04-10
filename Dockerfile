FROM python:3.7.7

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

RUN chmod +x start.sh

EXPOSE 8001

CMD ["./start.sh"]