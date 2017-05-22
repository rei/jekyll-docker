# jekyll-docker

Creates a Docker image for generating static sites with Jekyll.

### Usage

Basic usage is as follows:

    # Create a new site called my-site, which will create directory called "my-site" and put the basic
    # Jekyll files in place.
    docker run --rm -v "$(pwd):/data" reicoop/jekyll:3.4.3 new my-site

    # From within your site directory, build the site:
    docker run --rm -v "$(pwd):/data" reicoop/jekyll:3.4.3 build

    # From within your site directory, run it like this:
    docker run -it --rm -p 4000:4000 -v "$(pwd):/data" reicoop/jekyll:3.4.3 serve -H 0.0.0.0
