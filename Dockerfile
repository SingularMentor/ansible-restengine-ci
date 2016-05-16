FROM ansible/ubuntu14.04-ansible
MAINTAINER ariel@singularmentor.com.ar

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "curl", "openssh-client", "git", "rsync", "ruby2.0", "bundler", "-y"]
RUN ["rm", "/usr/bin/ruby"]
RUN ["ln", "-s", "/usr/bin/ruby2.0", "/usr/bin/ruby"]
