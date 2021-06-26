#!/usr/bin/env bash

set -e

# Fetch iris datasets
mkdir -p datasets/iris

wget --no-verbose https://s3.wasabisys.com/iguazio/data/iris/iris.data.raw.csv -O ./datasets/iris/iris.data.raw.csv
wget --no-verbose https://s3.wasabisys.com/iguazio/data/iris/iris_dataset.csv -O ./datasets/iris/iris_dataset.csv

# Fetch image-classification datasets
mkdir -p datasets/image-classification
wget --no-verbose http://iguazio-sample-data.s3.amazonaws.com/catsndogs.zip -O ./datasets/image-classification/catsndogs.zip
wget --no-verbose https://iguazio-sample-data.s3.amazonaws.com/cat.102.jpg -O ./datasets/image-classification/cat.102.jpg

# Fetch customer-churn-prediction datasets
mkdir -p datasets/customer-churn-prediction
wget --no-verbose https://iguazio-sample-data.s3.amazonaws.com/datasets/WA_Fn-UseC_-Telco-Customer-Churn.csv -O ./datasets/customer-churn-prediction/WA_Fn-UseC_-Telco-Customer-Churn.csv

# Fetch stock-analysis dataset
mkdir -p datasets/stock-analysis
wget --no-verbose https://iguazio-sample-data.s3.amazonaws.com/datasets/stock-analysis/model.pt -O ./datasets/stock-analysis/model.pt

# Fetch taxi datasets
mkdir -p datasets/taxi
wget --no-verbose https://iguazio-sample-data.s3.amazonaws.com/datasets/taxi/taxi_zones.csv -O ./datasets/taxi/taxi_zones.csv
wget --no-verbose https://iguazio-sample-data.s3.amazonaws.com/datasets/taxi/yellow_tripdata_2019-01_subset.csv -O ./datasets/taxi/yellow_tripdata_2019-01_subset.csv
