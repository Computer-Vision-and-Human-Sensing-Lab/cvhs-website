#!/bin/bash

# publishes the site to the live development link: http://eecs.qmul.ac.uk/~jo001/cvhs-website/
bundle exec jekyll build --baseurl /~jo001/cvhs-website/; rsync -a _site/ frank:~/public_html/cvhs-website/ --progress
