---
layout: default
title: Sakuracoin
---

# Sakuracoin

いつも「さくらコイン」にご協力いただき、ありがとうございます。

<ul>
{% for post in site.posts limit:10 %}
<li>
<a href="{{post.url}}">{{ post.date | date_to_long_string }} : {{ post.title }}</a>
</li>
{% endfor %}
</ul>

## さくらコインの入手(試験運用中)

下記のアドレスのいずれかにコインを送信して、ohachige.at.gmail.comに取引ID(トランザクションID)とあなたのさくらコインアドレスと交換元のコインの返送用アドレスをメールしてください。(返送用アドレスはコイン不足等のトラブルが起きた場合に使用します。)

* Sha1coin SQqr32xpK6hkmDyJRvPLaLFzqzfjq1Dr6f
  * 1口 100.00SHA => 200.00SKR
  * 最大10口(1000.00SHA)まで
* Monacoin MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY
  * 1口 1.00MONA => 100.00SKR
  * 最大10口(10.00MONA)まで

通常は上記のメール以外のやり取りは基本的に不要です。当面は手作業で処理しますので、お急ぎの方は他をあたってください。メールアドレスを晒したくない場合は[Bitmessage]を経由で送ってください。交換レートは日々変動しますのでご注意ください。メール送信日の交換レートで取り引きいたします。

試験運用中のため、トラブルが起きた場合は全額返送することがあります。ご了承ください。

## 寄付

[Donate]

[Donate]: sakuracoin:MTu6jrxp5xD6RHWeZUEpw7X5WnpmEzYTkd
[Bitmessage]: https://bitmessage.ch/
