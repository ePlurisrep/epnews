#!/bin/bash
set -e

# Script to setup Google Cloud authentication
# This script runs gcloud auth login to authenticate with Google Cloud Platform

echo "Starting Google Cloud authentication setup..."
echo ""

# Check if gcloud is installed
if ! command -v gcloud &> /dev/null
then
    echo "Error: gcloud CLI is not installed."
    echo "Please install the Google Cloud SDK from: https://cloud.google.com/sdk/docs/install"
    exit 1
fi

echo "Running gcloud auth login..."
if gcloud auth login; then
    echo ""
    echo "✓ Authentication successful!"
    echo ""
    echo "You can now:"
    echo "  - Deploy to Google Cloud Platform"
    echo "  - Access Google Cloud APIs"
    echo "  - Use gcloud commands"
    echo ""
    echo "To set your project, run:"
    echo "  gcloud config set project YOUR_PROJECT_ID"
else
    echo ""
    echo "✗ Authentication failed. Please try again."
    exit 1
fi
