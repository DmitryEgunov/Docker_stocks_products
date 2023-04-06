FROM alpine

COPY . .

WORKDIR /stocks_products

RUN apk add --no-cache python3 py3-pip
RUN pip3 install -r /stocks_products/requirements.txt

RUN python3 manage.py migrate

EXPOSE 8080

CMD ["python3", "-u", "manage.py", "runserver", "0.0.0.0:8080"]