ENV PYTHONUNBUFFERED 1

FROM python:2.7-onbuild
RUN apt-get update
RUN apt-get install -y libsasl2-dev python-dev libldap2-dev libssl-dev python-psycopg2 libpq-dev libxslt1-dev zlib1g-dev python-ldap nodejs npm

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]


