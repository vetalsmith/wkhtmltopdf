FROM ubuntu

RUN apt-get update && \
    apt-get dist-upgrade -y

RUN apt-get install -y \
        xvfb \
        xfonts-100dpi \
        xfonts-75dpi \
        xfonts-scalable \
        xfonts-cyrillic \
        wkhtmltopdf 

RUN apt-get install -y \
        python3-pip \
        python3-werkzeug

RUN pip3 install executor

ADD app.py /

CMD [ "python3", "app.py" ]
