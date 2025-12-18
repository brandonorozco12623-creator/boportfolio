#!/bin/bash

# Lighthouse Audit Script
# This script runs Lighthouse audits on all pages of your portfolio

echo "Starting Lighthouse audit..."
echo "================================"

# Start local server
echo "Starting local server on port 8080..."
cd docs
python3 -m http.server 8080 > /dev/null 2>&1 &
SERVER_PID=$!
sleep 2

# Run Lighthouse on all pages
cd ..

echo "Auditing index.html..."
npx lighthouse http://localhost:8080/index.html \
  --output html --output json \
  --output-path ./lighthouse-reports/index \
  --chrome-flags="--headless --no-sandbox --disable-gpu"

echo "Auditing about.html..."
npx lighthouse http://localhost:8080/about.html \
  --output html --output json \
  --output-path ./lighthouse-reports/about \
  --chrome-flags="--headless --no-sandbox --disable-gpu"

echo "Auditing blog.html..."
npx lighthouse http://localhost:8080/blog.html \
  --output html --output json \
  --output-path ./lighthouse-reports/blog \
  --chrome-flags="--headless --no-sandbox --disable-gpu"

echo "Auditing contact.html..."
npx lighthouse http://localhost:8080/contact.html \
  --output html --output json \
  --output-path ./lighthouse-reports/contact \
  --chrome-flags="--headless --no-sandbox --disable-gpu"

# Stop server
kill $SERVER_PID

echo "================================"
echo "Lighthouse audit complete!"
echo "Reports saved in ./lighthouse-reports/"
echo "Open the .html files in your browser to view the results"
