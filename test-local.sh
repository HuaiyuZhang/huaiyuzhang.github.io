#!/bin/bash

# Local test script that mimics the GitHub Actions workflow
# Run with: ./test-local.sh

set -e  # Exit on any error

echo "🚀 Starting local build and test..."

# Install dependencies
echo "📦 Installing dependencies..."
bundle install

# Build the site
echo "🔨 Building Jekyll site..."
JEKYLL_ENV=production bundle exec jekyll b -d "_site"

# Test the site with HTML proofer
echo "🧪 Running HTML proofer tests..."
bundle exec htmlproofer _site \
  --disable-external \
  --ignore-urls "/^http:\/\/127.0.0.1/,/^http:\/\/0.0.0.0/,/^http:\/\/localhost/"

echo "✅ All tests passed! Your site is ready for deployment."
