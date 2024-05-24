# MBARI Expedition API Integration
This repository contains the codebase for integrating API functionality using REST with the Monterey Bay Aquarium Research Institute (MBARI) Expedition Database.

# Overview

This project provides the necessary steps and tools to set up and run the API integration locally. The integration allows for streamlined interaction with the MBARI Expedition Database, enabling data retrieval and management through RESTful endpoints.

# Installation

## Prerequisites
Python (Ensure Python is installed on your machine)
A virtual environment tool (e.g., venv or virtualenv)


### Steps to Install

#### Clone the Repository:

```sh
git clone https://github.com/MatthewSanchez-202/MBARI-Expedition-API-Integration.git
```

#### Navigate to the Project Directory:

```sh
cd MBARI-Expedition-API-Integration
```

#### Create and Activate a Python Virtual Environment:

```sh
python -m venv venv
source venv/bin/activate
```

#### Install Required Libraries:

```sh
pip install requirements.txt
```

## Configuration

### Set Up Environment Variables:

Ensure your database information is stored in environment variables.

### Configure Database Variables in `main.py`:

Modify `main.py` to use the environment variables for database connection:

```python
SERVER = 'YOURSERVER'
DATABASE = 'YOURDB'
USERNAME = 'SA'
PASSWORD = 'YOURPASSWORD!'
URL = "http://127.0.0.1:5000"
# Define the connection string
connectionString = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={SERVER};DATABASE={DATABASE};UID={USERNAME};PWD={PASSWORD};'

```

## Running the Server

### Set Flask Application:

```sh
export FLASK_APP=main.py
```

### Run Flask Server:

```sh
flask --debug run
```

## Usage

Once the server is running, you can interact with the API endpoints to perform various operations on the MBARI Expedition Database. Detailed API documentation and endpoint descriptions can be found in the project documentation with Swagger.

## Support

This project has been handed off to MBARI.
