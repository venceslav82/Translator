FROM ubuntu:22.04

# Инсталиране на зависимости
RUN apt-get update && apt-get install -y python3 python3-pip

# Настройка на работната директория
WORKDIR /app

# Копиране на файловете
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

# Експониране на порт 5000
EXPOSE 5000

# Стартиране на приложението
CMD ["python3", "app.py"]
