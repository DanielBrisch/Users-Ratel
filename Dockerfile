FROM dart:stable@sha256:1d0491432892b4f7cd216dfaf8406adef5bff216adc51a024e381023d8f22ce7

WORKDIR /ratel

COPY pubspec.* /ratel/
RUN dart pub get

COPY . /ratel/
COPY .env .env

RUN dart pub get 

CMD ["dart", "run", "main.dart"]
