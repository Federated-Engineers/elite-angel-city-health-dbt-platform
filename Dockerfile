FROM python:3.11-slim

WORKDIR /opt/dbt

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x test.sh

ENTRYPOINT ["./test.sh"]

