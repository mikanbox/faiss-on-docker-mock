#checkov:skip=CKV_DOCKER_2: This image is used for event-driven lambda container
#checkov:skip=CKV_DOCKER_3: command is executed as the specific Lambda user

FROM public.ecr.aws/docker/library/python:3.12

# Copy function code
WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt 

COPY sample.py ./
COPY sample2.py ./

CMD [ "sample.py" ]