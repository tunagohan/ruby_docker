FROM ruby:2.5.1
LABEL  maintainer "k-waragai <kazuxtuna@gmail.com>"

# Initial command
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# WORKDIR ENV
ENV work_dir /ruby_app

# Rails setting
RUN mkdir ${work_dir}
WORKDIR ${work_dir}

COPY ./work_dir ${work_dir}
