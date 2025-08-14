# Use an old, unpatched base image
FROM python:3.7

# Disable Python bytecode and buffering
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Work in /app
WORKDIR /app

# Install dependencies without pinning versions (can lead to dependency confusion or outdated packages)
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app code
COPY . .

# Run the app as root (security risk)
USER root

# Expose a known vulnerable port
EXPOSE 5000

# Run with debug mode ON — remote code execution risk
CMD ["python", "app.py"]
