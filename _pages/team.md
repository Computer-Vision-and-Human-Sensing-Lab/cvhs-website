---
layout: page
permalink: /team/
title: team
description: 
nav: true
nav_order: 0
---

# PhD Students

{% if site.data.team.phd_students %}
<div class="row mb-5">
  {% for member in site.data.team.phd_students.members %}
  <div class="col-sm-4" style="margin: 5px 0; padding: 0 5px;">
  <div class="card">
    <a href="{{ member.homepage }}">
      <img style="padding: 10px;" class="card-img-top" src="{{ member.head_pic }}" alt="Card image cap">
    </a>
    <div class="card-body">
      <h5 class="card-title">
      <a href="{{ member.homepage }}">{{ member.name }}</a>
      </h5>
      <div class="card-text">
      <p>{{ member.years }}</p>
      <p><strong>Research interests:</strong> <br> {{ member.research }} </p>
      <p><strong>Homepage:</strong> <a href="{{ member.homepage }}">{{ member.homepage }}</a></p>
      {% if member.prev_affiliation %}
        Previously at: {{ member.prev_affiliation }}
      {% endif %}
      </div>
    </div>
  </div>
  </div>
  {% endfor %}
</div>
{% endif %}

# Postdocs

{% if site.data.team.postdocs %}
<div class="row mb-5">
  {% for member in site.data.team.postdocs.members %}
  <div class="col-sm-4" style="margin: 5px 0">
  <div class="card">
    <a href="{{ member.homepage }}">
      <img style="padding: 10px;" class="card-img-top" src="{{ member.head_pic }}" alt="Card image cap">
    </a>
    <div class="card-body">
      <h5 class="card-title">
      <a href="{{ member.homepage }}">{{ member.name }}</a>
      </h5>
      <div class="card-text">
      <p>{{ member.years }}</p>
      <p><strong>Research interests:</strong> <br> {{ member.research }} </p>
      <p><strong>Homepage:</strong> <a href="{{ member.homepage }}">{{ member.homepage }}</a></p>
      {% if member.prev_affiliation %}
        Previously at: {{ member.prev_affiliation }}
      {% endif %}
      </div>
    </div>
  </div>
  </div>
  {% endfor %}
</div>
{% endif %}


# Alumni

{% if site.data.team.alumni %}
<ul>
  {% for member in site.data.team.alumni.members %}
  <li>
    <strong>{{ member.name }}</strong>:
    {{ member.years }} [{{ member.research }}]
  </li>
  {% endfor %}
</ul>
{% endif %}
