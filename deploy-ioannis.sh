#!/bin/bash

# publishes the site to the live productiong link: http://eecs.qmul.ac.uk/~ioannisp/
bundle exec jekyll build --baseurl /~ioannisp/; rsync -a _site/ ioannisp@frank.eecs.qmul.ac.uk:~/public_html/ --progress
