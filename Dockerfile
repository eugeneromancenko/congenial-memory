FROM python:3.11-slim-buster

WORKDIR /flaskapp

# create appuser and give /flaskapp owner rights
RUN useradd -m -r appuser && \
    chown appuser /flaskapp

# copy dependencies 
COPY ./requirements.txt ./setup.py ./

# install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# copy hello and test folders
COPY ./hello /flaskapp/hello
COPY ./tests /flaskapp/tests

# install flask app
RUN python setup.py install

# set my appuser
USER appuser
ENV FLASK_APP=./hello
EXPOSE 5000

# run app on host
ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]