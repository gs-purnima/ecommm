FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/


FROM amazon/aws-cli
RUN aws s3 cp workspace/prj3Ecomm/ s3://s3terrabukt/ --recursive
