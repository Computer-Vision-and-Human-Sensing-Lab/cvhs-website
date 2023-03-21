# patras site

## making changes

Please make changes in the `dev` branch, and then open a pull request via the github website to merge into the stable master branch, which will contain the live repo on frank.

Note that, to edit just the website's text, you can also edit the text files via the GUI, and thus for basic changes it's not strictly necessary to use git manually at all.

E.g. use this link to update the information in "team" directly in the browser: [https://github.com/james-oldfield/patras-dev-42058/edit/dev/_data/team.yml](https://github.com/james-oldfield/patras-dev-42058/edit/dev/_data/team.yml)


## updating team members

Update the `.yml` file in `_data/team.yml`, or copy and paste new members. Ideally add your photos inline, to `./assets/img/`, bu you can also use an external URL.

## adding new publications

Add new bibtex entries to `_bibliography/papers.bib`. Some new custom options include:

* `preview={image.png}`, to include a photo snippet
* `select_key={true}`, to feature on the `./research` page.
* `tags={generation-and-learning}`, or one of: `[generation-and-learning,affective-computing,learning-from-few-samples,video-understanding]`.
* see full options in `./DEVELOP.md`.

## adding new repos

Add an item to `./_data/repositories.yml`

## adding new News items

Create a markdown file in `_news/title.md`. Specify a short title and add the full post in the markdown file. See `_news/cvpr2023.md` for an example. Make sure to update the date in the markdown file.

## developing

See `./DEVELOP.md`. In particular, jekyll & ruby are required to run and build the website locally. In short you need to install the dependencies and then you can run locally with:

```bash
bundle install
bundle exec jekyll serve --port 4001 --livereload
```

