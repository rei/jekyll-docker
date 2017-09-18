# jekyll-docker

Creates a Docker image for generating static sites with [Jekyll](https://jekyllrb.com/).

### Usage

Basic usage is as follows:

    # Create a new site called my-site, which will create a directory called "my-site" and put the basic Jekyll files in place.
    docker run --rm -v "$(pwd):/data" reicoop/jekyll:3.5.2 new my-site

    # cd into your new site directory and build:
    docker run --rm -v "$(pwd):/data" reicoop/jekyll:3.5.2 build

    # From within your site directory, run it like this:
    docker run -it --rm -p 4000:4000 -v "$(pwd):/data" reicoop/jekyll:3.5.2 serve -H 0.0.0.0
