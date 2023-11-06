FROM python:3.7

COPY requirements.txt /
RUN python -m pip install --upgrade pip -i https://pypi.douban.com/simple/\
    && python3 -m pip install -r /requirements.txt -i https://pypi.douban.com/simple/
WORKDIR /app