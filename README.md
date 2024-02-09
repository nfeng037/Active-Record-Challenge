## Active Record Challenge

This is the starter code for the WEBD-2007 Active Record challenge.

## Running Locally

### Steps to Run Locally

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/nfeng037/Active-Record-Challenge
   cd Active-Record-Challenge
   ```

2. Install the required gems:

    ```bash
    bundle install
    ```

3. After the gems are installed, you can run the Rails server or any other Rails commands as needed.


## Running with Docker
If you face compatibility issues with your local setup or prefer to run the application in a containerized environment, you can use Docker to run the project.

### Steps to Run with Docker
1. Ensure Docker is installed and running on your machine. Installation guides can be found at Docker's official documentation.

2. Pull the Docker image from Docker Hub:

    ```bash
    docker pull nfeng127/assignment3:latest
    ```

3. Run the container:

    ```bash
    docker run -it --name assignment3 nfeng127/assignment3:latest
    ```
    This command starts a Docker container named assignment3 based on the nfeng127/assignment3:latest image. Within the container, you can run Rails commands or interact with the application as needed.


## License

This is free and unencumbered software released into the public domain. See UNLICENSE for details.
