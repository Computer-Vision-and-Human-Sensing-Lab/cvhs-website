# patras site

# making changes to text through the website GUI

Note that, to edit just the website's text, you can edit the text files via the GUI, and thus for basic changes it's not strictly necessary to use git manually at all.
E.g. use this link to update the information in "team" directly in the browser: [https://github.com/james-oldfield/patras-dev-42058/edit/dev/_data/team.yml](https://github.com/james-oldfield/patras-dev-42058/edit/dev/_data/team.yml)

# making changes and developing locally

## committing and pushing changes

Firstly, please checkout the `dev` branch, and pull the latest changes:

```bash
$ git checkout dev
$ git pull origin dev
```

Make modifications to your files, and then:

```bash
$ git add .
$ git commit -m "details of new commit"
$ git push origin dev
```

## developing locally

Run the following:
```bash
bundle install
bundle exec jekyll serve --port 4001 --livereload
```
then go to `localhost:4001` in a browser.

## deploying


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
