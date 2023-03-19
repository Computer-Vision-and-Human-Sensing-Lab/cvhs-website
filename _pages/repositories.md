---
layout: page
permalink: /code-and-datasets/
title: code
description: Edit the `_data/repositories.yml` and change the `github_users` and `github_repos` lists to include your own GitHub profile and repositories.
nav: true
nav_order: 3
---

## Datasets

{% if site.data.datasets %}
<div class="row mb-5">
<div style="margin: 5px 0">
  {% for item in site.data.datasets %}
  <div style="margin-bottom: 10px">
    <div class="card card-flex">
      <div class="embed-responsive embed-responsive-16by9">
      <img class="card-img-top embed-responsive-item" src="{{ item.image }}" alt="Card image cap">
      </div>
      <div class="card-body dataset-card">
        <h3 class="card-title">
          <a href="{{ item.link }}">{{ item.title }}</a></h3>
        <p class="card-text">{{ item.desc }}</p>
      </div>
    </div>
  </div>
  {% endfor %}
</div>
</div>
{% endif %}

<h2>Code</h2>

{% if site.data.repositories.github_repos %}
<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.html repository=repo %}
  {% endfor %}
</div>
{% endif %}
