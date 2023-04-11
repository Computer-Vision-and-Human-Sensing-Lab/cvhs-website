#!/bin/bash

# publishes the site to the live development link: http://eecs.qmul.ac.uk/~jo001/patras-website/
bundle exec jekyll build --baseurl /~jo001/patras-website/; rsync -a _site/ frank:~/public_html/patras-website/ --progress
