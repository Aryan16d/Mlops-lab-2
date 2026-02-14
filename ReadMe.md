# MLOps Lab 1 - Dockerized Logistic Regression on Iris Dataset

This repository contains a **Dockerized machine learning project** that trains a **Logistic Regression** model on the **Iris dataset** and saves the trained model locally. The project demonstrates how to containerize ML workflows using Docker.

1)Updated Docker file

2) Build the Docker Image using

docker build -t my-ml-app:v1

3)Run the Docker Container

Create the folder to save the model

mkdir -p working_data

Run the container with the volume mapping

docker run --rm -v $(pwd)/working_data:/app/working_data my-ml-app:v1

4)Verify the Model

After running the container, you should see:
Model training successful. Test Accuracy: 0.9667
Model saved to: working_data/iris_model.pkl
