FROM httpd
WORKDIR /usr/local/apache2/htdocs/
COPY . /usr/local/apache2/htdocs/


FROM amazon/aws-cli
RUN aws s3 cp . s3://s3terrabukt/ --recursive

