# need to use Ash(Almquist shell) to run shell of alpine
# https://stackoverflow.com/questions/35689628/starting-a-shell-in-the-docker-alpine-container
# https://stackoverflow.com/questions/43308319/how-can-i-run-bash-in-a-new-container-of-a-docker-image
docker run --rm -it --entrypoint bash ndk_base
