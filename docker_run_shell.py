import subprocess
from docker_build import DOCKER_IMAGE_NAME

# https://stackoverflow.com/questions/43308319/how-can-i-run-bash-in-a-new-container-of-a-docker-image
if __name__ == "__main__":
    subprocess.run(
        ["docker", "run", "--rm", "-it", "--entrypoint", "bash", DOCKER_IMAGE_NAME]
    )
