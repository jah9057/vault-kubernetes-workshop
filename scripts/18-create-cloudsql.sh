#!/usr/bin/env bash
set -e

if [ -z "${GOOGLE_CLOUD_PROJECT}" ]; then
  echo "Missing GOOGLE_CLOUD_PROJECT!"
  exit 1
fi

gcloud sql instances create my-instance-2 \
    --database-version MYSQL_5_7 \
    --tier db-f1-micro \
    --region us-east1 \
    --authorized-networks 0.0.0.0/0 \
    --async