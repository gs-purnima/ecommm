
FROM amazon/aws-cli
RUN aws s3 cp . s3://s3terrabukt/ --recursive



