FROM elixir:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --yes mariadb-client

RUN mix local.hex --force
RUN mix local.rebar --force
RUN wget https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix archive.install --force ./phx_new.ez

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs

RUN mkdir /app
ADD . /app
WORKDIR /app

EXPOSE 4000

ARG MYSQL_USER
ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_HOSTNAME

ENV MYSQL_USER $MYSQL_USER
ENV MYSQL_ROOT_PASSWORD $MYSQL_ROOT_PASSWORD
ENV MYSQL_DATABASE $MYSQL_DATABASE
ENV MYSQL_HOSTNAME $MYSQL_HOSTNAME

RUN mix do compile
CMD mix phx.server