FROM ruby:2.4

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update
RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false install -y nodejs python-pygments

RUN gem install --no-document jekyll:3.6.2 rdiscount kramdown minima jekyll-feed rouge octokit jekyll-paginate

ENV JEKYLL_HOME /data
RUN addgroup jekyll --gid 500 && mkdir -p $JEKYLL_HOME && \
    adduser --uid 500 --ingroup jekyll --home $JEKYLL_HOME --disabled-password --gecos '' jekyll && \
    chown -R jekyll:jekyll /data

USER jekyll

VOLUME /data
EXPOSE 4000
COPY ./run-jekyll.sh /
ENTRYPOINT ["/run-jekyll.sh"]
