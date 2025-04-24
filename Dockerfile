# Use an official lightweight image
FROM ubuntu:22.04

# Install bash and any other tools you need
RUN apt-get update && apt-get install -y bash

# Set the default command to bash
CMD ["bash"]

