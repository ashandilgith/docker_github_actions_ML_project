#Use the official Python image from the Docker Hub 

FROM python:3.9-slim 

#set the working directory 

WORKDIR /app

#copy the current directory contents into the container at /app

COPY . /app

#install any needed packages in requirements.txt

RUN pip install flask 

#Make port 5000 available to the world outside this container 
EXPOSE 5000

#Run app.py when the container launches

CMD ["python", "app.py"]