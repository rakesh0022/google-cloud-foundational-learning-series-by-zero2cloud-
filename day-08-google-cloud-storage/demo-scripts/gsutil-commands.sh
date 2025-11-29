#!/usr/bin/env bash
# Example gsutil commands - replace YOUR_BUCKET and paths
gcloud config set project YOUR_PROJECT_ID
gcloud auth login
# Create bucket with uniform access
gcloud storage buckets create gs://YOUR_BUCKET --location=asia-south1 --uniform-bucket-level-access
# Upload a file
gsutil cp sample.jpg gs://YOUR_BUCKET/
# List objects
gsutil ls gs://YOUR_BUCKET

