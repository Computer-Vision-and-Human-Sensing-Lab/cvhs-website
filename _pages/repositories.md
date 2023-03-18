---
layout: page
permalink: /code-and-datasets/
title: code
description: Edit the `_data/repositories.yml` and change the `github_users` and `github_repos` lists to include your own GitHub profile and repositories.
nav: true
nav_order: 3
---

## Datasets

<div class="row mb-5">

  <div style="margin: 5px 0">
  <div style="margin-bottom: 10px">
    <div class="card card-flex">
      <div class="embed-responsive embed-responsive-16by9">
      <img class="card-img-top embed-responsive-item" src="https://www.eecs.qmul.ac.uk/mmv/datasets/deap/img/subject.jpg" alt="Card image cap">
      </div>
      <div class="card-body dataset-card">
        <h3 class="card-title">
          <a href="https://www.eecs.qmul.ac.uk/mmv/datasets/deap/">DEAP Dataset</a></h3>
        <p class="card-text">
        A multimodal dataset for the analysis of human affective states. The electroencephalogram (EEG) and peripheral physiological signals of 32 participants were recorded as each watched 40 one-minute long excerpts of music videos. 
        </p>
      </div>
    </div>
  </div>

  <div style="margin-bottom: 10px">
    <div class="card card-flex">
      <div class="embed-responsive embed-responsive-16by9">
      <img class="card-img-top embed-responsive-item" src="http://www.eecs.qmul.ac.uk/mmv/datasets/amigos/img/Group_Frontal_small.png" alt="Card image cap">
      </div>
      <div class="card-body dataset-card">
        <h3 class="card-title">
          <a href="http://www.eecs.qmul.ac.uk/mmv/datasets/amigos/">Amigos Dataset</a></h3>
        <p class="card-text">
        A dataset for research on affect, personality traits and mood by means of neuro-physiological signals. We elicited affect using both short and long videos in two configurations, one with individual viewers and one with groups of viewers. Electroencephalogram (EEG), Electrocardiogram (ECG), and Galvanic Skin Response (GSR), were recorded using wearable sensors. 
        </p>
      </div>
    </div>
  </div>

</div>

<h2>Code</h2>

{% if site.data.repositories.github_repos %}
<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.html repository=repo %}
  {% endfor %}
</div>
{% endif %}
