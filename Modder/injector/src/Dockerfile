# start from base
FROM python:3 
MAINTAINER KuhakuPixel <Nicholaspixels@gmail.com>

# copy all the files to the container
COPY . .

# install deps
# cache apt-get install
RUN --mount=target=/var/lib/apt/lists,type=cache,sharing=locked \
    --mount=target=/var/cache/apt,type=cache,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean && \
    # ============= update and install ============
    apt-get -y update &&\
    apt-get -y --no-install-recommends install \
	aapt\
	adb\ 
	# for  signing and zip align
	apksigner\
	zipalign\
	# 
	apktool 

# change workdir
# install objection requirements
RUN pip install -r ./objection/requirements-dev.txt
# install objection so it can be run as a command
RUN pip install --editable ./objection/

# run server
CMD ["python3","./run_server.py"]
