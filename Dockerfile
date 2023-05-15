# Use an official Python runtime with CUDA as a parent image
FROM nvidia/cuda:11.2.2-base-ubuntu20.04

# Install Python
RUN apt-get update && apt-get install -y python3.8 python3-pip

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirement.txt
RUN apt-get update && apt-get install -y libsndfile1

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME What

# Run your python file when the container launches
CMD ["bash"]
