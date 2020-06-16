
![Build Status](https://circleci.com/gh/5r33/MicroservicesProjectC.svg?branch=master)

## Project Overview

In this project, we will  operationalize a Machine Learning Microservice API. 

A pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Goal

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project to ensure the ope-rationalization of the package is successful following checks will be donel:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

--

## Setup the Environment

The entire project is run in a virtual environment 
Below is the command to initialize the virtual environment
```
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

* **[Makefile](./Makefile)**:  JInstalling dependencies via project `Makefile`. Many of the project dependencies are listed in the file `requirements.txt`; these can be installed using `pip` commands in the provided `Makefile`. While in your project directory, type the following command to install these dependencies.

```
make install
```
*  **[Dockerfile](./final-project-server-parameter.json)**:  Docker can build images automatically by reading the instructions from a  `Dockerfile`. The Dockerfile contains all the commands a user could call on the command line to assemble an image.To view the contents of the  `Dockerfile`  type:  `cat Dockerfile`. You can edit any file by opening it in a text editor and saving it

*  **[run_docker.sh](./run_docker.sh)**:  In order to run a containerized application, you’ll need to build and run the docker image that you defined in the `Dockerfile`, and then you should be able to test your application, locally, by having the containerized application accept some input data and produce a prediction about housing prices. `run_docker.sh`

*  **[upload_docker.sh](./upload_docker.sh)**:  Now that you’ve tested your containerized image locally, you’ll want to upload your built image to docker. This will make it accessible to a Kubernets cluster.

*   **[run_kubernetes.sh](./run_kubernetes.sh)**:  Now that you’ve uploaded a docker image and configured Kubernetes so that a cluster is running, you’ll be able to deploy your application on the Kubernetes cluster. This involves running your containerized application using `run_kubernetes.sh`, which is a command line interface for interacting with Kubernetes clusters

*   **[make_prediction.sh](./make_prediction.sh)**:  This shell script is responsible for sending some input data to your containerized application via the appropriate port. Each numerical value in here represents some feature that is important for determining the price of a house in Boston. The source code is responsible for passing that data through a trained, machine learning model, and giving back a predicted value for the house price.In the prediction window, you should see the value of the prediction, and in your main window, where it indicates that your application is running, you should see some log statements print out. You’ll see that it prints out the input payload at multiple steps; when it is JSON and when it’s been converted to a DataFrame and about to be scaled.

## Other Libraries

While you still have your  `.devops`  environment activated, you will still need to install:
-   Docker --> To install the latest version of docker, choose the Community Edition (CE) for your operating system, [on docker’s installation site](https://docs.docker.com/v17.12/install/). It is also recommended that you install the latest, **stable** release:
-   Hadolint --> Install `hadolint` following the instructions, [on hadolint's page](https://github.com/hadolint/hadolint):
-   Kubernetes (Minikube)--> To run a Kubernetes cluster locally, for testing and project purposes, you need the Kubernetes package, Minikube. This operates in a virtual machine and so you'll need to download two things: A virtual machine (aka a hypervisor) then minikube. Thorough installation instructions can be found [here](https://kubernetes.io/docs/tasks/tools/install-minikube/).

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


