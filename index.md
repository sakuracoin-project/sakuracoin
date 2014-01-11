---
layout: default
title: Sakuracoin
---

# Sakuracoin

いつも「さくらコイン」にご協力いただき、ありがとうございます。

<ul>
{% for post in site.posts limit:10 %}
<li>
<a href="/sakuracoin/{{post.url}}">{{ post.date | date_to_long_string }} : {{ post.title }}</a>
</li>
{% endfor %}
</ul>

## さくらコインについて

さくらコインは一瞬だけ公開されていた旧モナーコインのブロックチェインを扱える仮想通貨です。
(旧モナーコインはWindows用のバイナリしか公開されておらず、新モナーコインへ移行することが決定したため、公開停止してしまいました。モナーコインを名乗るのは混乱の元となるので、名前をさくらコインと名付けました。)

今のところ 36.2.132.153:9301 でsakuracoindを動かしているので、初期ノードとしてお使いください。
ノード数が少なく、ハッシュパワーも少ないのでポートの公開や採掘で協力していただけると助かります。

## ダウンロード

Windows用のクライアントソフト
* https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140104-13-win32-setup.exe
* 旧バージョン
  * https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140103-16-win32-setup.exe
  * https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140103-13-win32-setup.exe
  * https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20130103-11-win32-setup.exe
  * https://dl.dropboxusercontent.com/u/5745602/sakuracoin-win32-20140102.zip

Ubuntu 13.10 amd64 用のクライアントソフト
* https://dl.dropboxusercontent.com/u/5745602/sakuracoin-ubuntu13.10-amd64-20140101.zip

Mac OSX用のクライアントソフト
* なし
  * 作成する環境を持っていないので、どなたかご協力いただければ助かります。

このページは開発者のみ編集可能に設定しておりますので、上記URLは他の人は改ざんできません。
URLはohacのDropboxアカウントを使用しておりますので、こちらも改ざんできませんが、念のためmd5sumを
付けておきます。

    032c949ec0364901e39078d35deedd06 *sakuracoin-20140104-13-win32-setup.exe
    6b49339eae97a82811cede23d8ac9d53 *sakuracoin-20140103-16-win32-setup.exe
    d5a101eb688d76f3c2c899286af1a269 *sakuracoin-20140103-13-win32-setup.exe
    d419c050074d11ed356abf8d4fb19ccd *sakuracoin-20130103-11-win32-setup.exe
    d7fe00bdbcee3fb1bc55a87fd179ddce *sakuracoin-ubuntu13.10-amd64-20140101.zip
    75be690cf6f33494fec1de579f80f9b0 *sakuracoin-win32-20140102.zip

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

## 外部の交換所(Exchange)

* したらば掲示板 http://jbbs.shitaraba.net/bbs/read.cgi/internet/19552/1388817096/l50

## sakuracoin.conf 設定例

    rpcuser=user
    rpcpassword=pass
    addnode=36.2.132.153:9301

非効率ではありますが、採掘する場合はgen=1をつけるお気軽な方法があります。

    gen=1

効率を求めるならcpuminerやcgminer, cudaminer等を使ってください。

## 仕様

* Algorithm: Scrypt
* Premine: none
* Block reward: 50 SKR
* Block time: 1.5 minutes
* Retarget: 2400 blocks
* Totalcoins: ? million

## 採掘所(Pools)

なし

## ブロック情報(Block explorer)

なし

## Bounties

なし(アイデア募集中)

* 例
  * Mac OSX用のクライアントソフト作成
  * クライアントソフトの日本語化
  * Webウォレットサービス
  * Block Explorer

## Funds

なし(アイデア募集中)

* 例
  * 日本語ブログ記事1つにつき1.0SKR等

## Others

* http://jbbs.shitaraba.net/internet/19552/ 掲示板
* http://www59.atwiki.jp/japancryptocurrency/pages/15.html 外部Wiki

## その他のコイン

* http://ohac.github.io/sha1coin/ Sha1coin
* Monacoin野良ビルド
  * https://dl.dropboxusercontent.com/u/5745602/monacoin-qt
  * ttps://dl.dropboxusercontent.com/u/5745602/monacoin-20140104-13-win32-setup.exe (近日公開予定)

## 寄付

[Donate SKR]
[Donate SHA]
[Donate MONA]

[Donate SKR]: sakuracoin:MTu6jrxp5xD6RHWeZUEpw7X5WnpmEzYTkd
[Donate SHA]: sha1coin:SQqr32xpK6hkmDyJRvPLaLFzqzfjq1Dr6f
[Donate MONA]: monacoin:MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY
[Bitmessage]: https://bitmessage.ch/
