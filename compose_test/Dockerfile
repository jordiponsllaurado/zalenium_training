FROM ruby

WORKDIR /usr/src/app


COPY test.rb .
COPY wait-for-grid.sh .

RUN apt-get update && apt-get install jq -y

RUN gem install watir


RUN chmod 777 wait-for-grid.sh

CMD ["./wait-for-grid.sh", "ruby", "test.rb"]
