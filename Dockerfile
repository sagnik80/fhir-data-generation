#importing base image
FROM python
#copying all the files under the project presented as . to the docker root dir app
COPY . /app
#transforming the root dir as working dir
WORKDIR /app
# installing all the dependencies from Pipfile
RUN pip install pipenv && pipenv install
# Entrypoint to create the docker image
CMD ["python","main.py"]
