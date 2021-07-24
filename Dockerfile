# Slim buster user python : beta version
FROM biansepang/weebproject:buster

# Snoopy-Userbot
# Python
# Snoopy-Userbot
RUN git clone -b main https://github.com/MAHADEV-X-FORCE/SNOOPY-USERBOT /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/MAHADEV-X-FORCE/SNOOPY-USERBOT/main/requirements.txt

CMD ["python3","-m","userbot"]
