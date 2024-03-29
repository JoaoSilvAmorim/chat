FROM python:3.8.2
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
#RUN python manage.py makemigrations
#RUN python manage.py migrate
COPY . /code/
