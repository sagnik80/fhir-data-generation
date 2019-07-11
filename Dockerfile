FROM python
COPY . /app
WORKDIR /app
RUN pip install pipenv && pipenv install
CMD ["python","main.py"]
