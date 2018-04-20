FROM ruby

WORKDIR /usr/src/app


COPY grid_docker.rb .
COPY wait-for-grid.sh .

RUN apt-get update && apt-get install jq -y

RUN gem install watir


RUN chmod 777 wait-for-grid.sh

CMD ["./wait-for-grid.sh", "ruby", "grid_docker.rb"]
