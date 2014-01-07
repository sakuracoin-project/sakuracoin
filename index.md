---
layout: default
title: Sakuracoin
---

# Sakuracoin

<ul>
{% for post in site.posts limit:10 %}
<li>
<a href="{{post.url}}">{{ post.date | date_to_long_string }} : {{ post.title }}</a>
</li>
{% endfor %}
</ul>
