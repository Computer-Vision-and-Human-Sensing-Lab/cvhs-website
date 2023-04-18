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

My research is in the area of Human Centered Machine Learning, using Machine Learning, Computer Vision and Signal Processing methodologies to learn from multiple sources concepts that enable Intelligent Systems to understand, communicate and collaborate with humans. Currently it evolves around three themes:
<ul>
<li>Learning to recognise behaviour, emotions and cognitive states of people by analysing their images, video and neuro-physiological signals</li>
<li>Learning across modalities, and in particular at the intersections of language and vision, using large, pretrained language and audio-visual models</li>
<li>Learning from generative models and learning to control generation for privacy, interpretability and control purposes.</li>
</ul>

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
