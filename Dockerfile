FROM gaafar/cron

# Install python
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip

# Install curator
RUN pip install elasticsearch-curator==4.1.2

# Copy curator config
COPY config /config

# Add crontab file in the cron directory
COPY crontab /etc/cron.d/crontab
