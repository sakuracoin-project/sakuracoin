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

## 2014/01/07 19:55 の状態

* ブロックチェインの高さ: 20844ブロック
* ブロックチェイン成長速度: +0.823/分 (ご協力ありがとうございます。)
* 採掘難易度: 0.024597
* 次回採掘難易度変更: 21600ブロック (2400 * 9)
* シードノードへの接続ノード数: 4ノード (低いのでご協力お願いします。)
