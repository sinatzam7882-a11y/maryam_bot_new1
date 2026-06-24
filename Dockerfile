FROM python:3.9-slim

WORKDIR /app

# نصب وابستگی‌ها
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# کپی کد
COPY . .

# متغیرهای محیطی
ENV BOT_TOKEN=your_token_here
ENV GROQ_API_KEY=your_api_key_here
ENV ADMIN_ID=8065571732
ENV CHANNEL_ID=@synapdse_os

CMD ["python", "bot.py"]