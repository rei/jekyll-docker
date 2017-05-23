FROM ruby:2.4

RUN apt-get update
RUN apt-get install -y node python-pygments

RUN gem install --no-ri --no-rdoc jekyll:3.4.3 rdiscount kramdown minima jekyll-feed rouge

ENV JEKYLL_HOME /data
RUN addgroup jekyll --gid 500 && mkdir -p $JEKYLL_HOME && \
    adduser --uid 500 --ingroup jekyll --home $JEKYLL_HOME --disabled-password --gecos '' jekyll && \
    chown -R jekyll:jekyll /data

USER jekyll

VOLUME /data
EXPOSE 4000

WORKDIR /data
ENTRYPOINT ["jekyll"]
