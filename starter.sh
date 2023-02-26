#!/bin/bash

# Start the consumer
python Consumer.py &

# Wait for the consumer to start
sleep 5

# Start the FastAPI app with Gunicorn
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app
