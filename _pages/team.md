---
layout: page
permalink: /team/
title: team
description: 
nav: true
nav_order: 0
---

<div class="team">

{% if site.data.team.phd_students %}
<h1 style="margin-top: 50px;">PhD Students</h1>
<div class="row row-cols-1 row-cols-md-4">
  {% for member in site.data.team.phd_students.members %}
  <div class="col mb-4 card-col">
  <div class="card">
    <a href="{{ member.homepage }}">
      <div class="embed-responsive embed-responsive-1by1">
      <img style="padding: 10px;" class="card-img-top embed-responsive-item" src="{{ member.head_pic }}" alt="Card image cap">
      </div>
    </a>
    <div class="card-body">
      <h6 class="card-title">
      <a href="{{ member.homepage }}">{{ member.name }}</a>
      </h6>
      <div class="card-text">
      <p>{{ member.years }}</p>
      <p><strong>Research interests:</strong> <br> {{ member.research }} </p>
      </div>
  </div>
  <div class="card-footer">
      <p><strong>Homepage:</strong> <br> <a href="{{ member.homepage }}">{{ member.homepage }}</a></p>
  </div>
  </div>
  </div>
  {% endfor %}
</div>
{% endif %}


{% if site.data.team.postdocs %}
<h1 style="margin-top: 50px;">Postdocs</h1>
<div class="row row-cols-1 row-cols-md-5">
  {% for member in site.data.team.postdocs.members %}
  <div class="col mb-4 card-col">
  <div class="card">
    <a href="{{ member.homepage }}">
      <div class="embed-responsive embed-responsive-1by1">
      <img style="padding: 10px;" class="card-img-top embed-responsive-item" src="{{ member.head_pic }}" alt="Card image cap">
      </div>
    </a>
    <div class="card-body">
      <h6 class="card-title">
      <a href="{{ member.homepage }}">{{ member.name }}</a>
      </h6>
      <div class="card-text">
      <p>{{ member.years }}</p>
      <p><strong>Research interests:</strong> <br> {{ member.research }} </p>
      </div>
    </div>
  <div class="card-footer">
      <p><strong>Homepage:</strong> <br> <a href="{{ member.homepage }}">{{ member.homepage }}</a></p>
  </div>
  </div>
  </div>
  {% endfor %}
</div>
{% endif %}

{% if site.data.team.collaborators %}
<h1 style="margin-top: 50px;">Collaborators</h1>
<div class="row row-cols-1 row-cols-md-5">
  {% for member in site.data.team.collaborators.members %}
  <div class="col mb-4 card-col">
  <div class="card">
    <a href="{{ member.homepage }}">
      <div class="embed-responsive embed-responsive-1by1">
      <img style="padding: 10px;" class="card-img-top embed-responsive-item" src="{{ member.head_pic }}" alt="Card image cap">
      </div>
    </a>
    <div class="card-body">
      <h6 class="card-title">
      <a href="{{ member.homepage }}">{{ member.name }}</a>
      </h6>
      <div class="card-text">
      <p>{{ member.years }}</p>
      <p><strong>Research interests:</strong> <br> {{ member.research }} </p>
      <p><strong>Affiliation:</strong> {{ member.affiliation }} </p>
      </div>
    </div>
  <div class="card-footer">
      <p><strong>Homepage:</strong> <br> <a href="{{ member.homepage }}">{{ member.homepage }}</a></p>
  </div>
  </div>
  </div>
  {% endfor %}
</div>
{% endif %}


{% if site.data.team.alumni %}
<h1 style="margin-top: 50px;">Alumni</h1>
<table class="table table-responsive table-sm">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Years</th>
      <th scope="col">Thesis title</th>
    </tr>
  </thead>
  <tbody>
  {% for member in site.data.team.alumni.members %}
    <tr>
      <th scope="row">{{ member.name }}</th>
      <td>{{ member.years }}</td>
      <td>{{ member.research }}</td>
    </tr>
  {% endfor %}
  </tbody>
</table>
{% endif %}



</div>
