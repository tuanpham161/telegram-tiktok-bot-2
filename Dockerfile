# Sử dụng image Python có sẵn ffmpeg
FROM python:3.10-slim

# Cài đặt ffmpeg và các phụ thuộc
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# Tạo thư mục app và copy toàn bộ mã nguồn
WORKDIR /app
COPY . /app

# Cài thư viện từ requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Chạy file chính
CMD ["python", "bot_chat_telegram.py"]
