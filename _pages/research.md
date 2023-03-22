---
layout: page
title: research
permalink: /research/
description: A growing collection of your cool projects.
nav: true
nav_order: 2
display_categories: [work, fun]
horizontal: false
---

<h1>Research Themes</h1>

{% if site.data.research.overview %}
<p>
{{ site.data.research.overview }}
</p>
{% endif %}

<div class="research">
  <div class="row mb-5">
  {% if site.data.research.items %}
  <div>
    {% for item in site.data.research.items %}
    <div style="margin-bottom: 50px">
      <div class="card card-flex">
        <div class="card-image embed-responsive embed-responsive-16by9">
        <img class="card-img-top embed-responsive-item" src="{{ item.image }}" alt="Card image cap">
        </div>
        <div class="card-body card-body-25">
          <h3 class="card-title">{{ item.title }}</h3>
          <p class="card-text">{{ item.desc }}</p>
          <strong>Key references:</strong>
            {% bibliography -f papers -q @*[select_key=true,tags={{ item.tag }}]* %}
        </div>
      </div>
    </div>
    {% endfor %}
  </div>
  {% endif %}

  </div>
</div>
