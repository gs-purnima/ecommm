FROM httpd:2.4
WORKDIR usr/local/apache2/htdocs/
COPY . /usr/local/apache2/htdocs/


FROM amazon/aws-cli
RUN aws s3 cp  /usr/local/bin s3://s3terrabukt/ --recursive
