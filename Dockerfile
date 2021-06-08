FROM ruby:2.4

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update
RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false install -y nodejs python-pygments

RUN gem install --no-document jekyll:3.9.1 kramdown-parser-gfm rdiscount kramdown minima jekyll-feed rouge octokit jekyll-paginate

VOLUME /data
EXPOSE 4000
COPY ./run-jekyll.sh /
ENTRYPOINT ["/run-jekyll.sh"]
