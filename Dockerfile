
FROM amazon/aws-cli
RUN mkdir /front
WORKDIR /front
COPY . /front
RUN  aws s3 cp /front s3://s3terrabukt --recursive



