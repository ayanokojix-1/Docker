# 1️⃣ Use an official Python image as base
FROM python:3.11-slim

# 2️⃣ Set working directory inside container
WORKDIR /app

# 🧩 Install git
RUN apt-get update && apt-get install -y git && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# 3️⃣ Clone the repo
RUN git clone https://github.com/A-Y-A-N-O-K-O-J-I/DND-API /app

# 4️⃣ Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Expose port
EXPOSE 7860

# 6️⃣ Run app
CMD ["python", "app.py"]
