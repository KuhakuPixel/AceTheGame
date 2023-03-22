import subprocess


# docker image name must be lower case 
DOCKER_IMAGE_NAME = "ace_the_game"
if __name__ == "__main__":
    subprocess.run(["docker", "build", "-t", DOCKER_IMAGE_NAME, "."])
