---
layout: page
title: projects
permalink: /projects/
description: A growing collection of your cool projects.
nav: true
nav_order: 3
display_categories: [work, fun]
horizontal: false
---

<h1>Live projects</h1>

{% if site.data.projects.overview %}
<p>
{{ site.data.projects.overview }}
</p>
{% endif %}


<div class="row mb-5">
{% if site.data.projects.items %}
<div>
  {% for item in site.data.projects.items %}
  <div>
    <div class="card card-flex">
      <div class="embed-responsive embed-responsive-16by9">
      <img class="card-img-top embed-responsive-item" src="{{ item.image }}" alt="Card image cap">
      </div>
      <div class="card-body card-body-25">
        <h3 class="card-title">{{ item.title }}</h3>
        <p class="card-text">{{ item.desc }}</p>
        <p class="card-text"><small class="text-muted">Homepage: <a href="{{ item.link }}">{{ item.link }}</a></small></p>
      </div>
    </div>
  </div>
  {% endfor %}
</div>
{% endif %}

</div>

<h1>Selected past projects</h1>

{% if site.data.projects.past %}
<div>
<ul>
  {% for item in site.data.projects.past %}
  <li>
    <strong>{{ item.title }}</strong>
    <br>
    <p>[{{ item.dates }}]<br>{{ item.funding }}</p>
  </li>
  {% endfor %}
</ul>
</div>
{% endif %}
