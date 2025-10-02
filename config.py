import os
from os import getenv

API_ID = int(os.environ.get("API_ID", "21938491"))  # Replace "123456" with your actual api_id or use .env
API_HASH = os.environ.get("API_HASH", "bb2501337fa3ca8a8cda24939fb75c3d")
BOT_TOKEN = os.environ.get("BOT_TOKEN", "")

OWNER_ID = int(os.environ.get("OWNER_ID", "7068902812"))  # Your Telegram user ID
SUDO_USERS = list(map(int, os.environ.get("SUDO_USERS", "").split()))  # Space-separated user IDs

MONGO_URL = os.environ.get("MONGO_URL", "mongodb+srv://gpsiwan_db_user:TcjF1I6JdU6ZGu2s@cluster0.pmyfuf7.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0")##your mongo url eg: withmongodb+srv://xxxxxxx:xxxxxxx@clusterX.xxxx.mongodb.net/?retryWrites=true&w=majority
CHANNEL_ID = int(os.environ.get("CHANNEL_ID", "-1003118764290"))  # Telegram channel ID (with -100 prefix)

PREMIUM_LOGS = os.environ.get("PREMIUM_LOGS", "-1002785765618")  # Optional here you'll get all logs
