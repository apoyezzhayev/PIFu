FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-runtime

WORKDIR /code

RUN apt-get update && apt-get install -y libglib2.0-0 libsm6 libxext6 libxrender-dev

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD tail -f /dev/null