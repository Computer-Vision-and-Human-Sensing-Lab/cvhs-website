---
layout: page
permalink: /vacancies/
title: vacancies
description: 
nav: true
nav_order: 3
---

<h1>Vacancies</h1>

{% if site.data.vacancies %}
{% for item in site.data.vacancies %}
<div class="mb-4" id="accordion">
  <div class="card">
    <div class="card-header" id="{{ forloop.index }}">
    <button class="display-1 btn btn-link text-left" style="text-transform: none" data-toggle="collapse" data-target="#collapse{{ forloop.index }}" aria-expanded="true" aria-controls="collapse{{ forloop.index }}">
        <h2><strong>{{ item.title }}</strong></h2>
        <strong>Deadline:</strong> {{ item.deadline }}
    </button>
    </div>
    <div id="collapse{{ forloop.index }}" class="collapse" aria-labelledby="heading{{ forloop.index }}" data-parent="#accordion">
      <div class="card-body">
          {{ item.content | markdownify }}
      </div>
    </div>
  </div>
</div>
{% endfor %}
{% else %}
<h1>Sorry, there are currently no new vacancies.</h1>
{% endif %}
