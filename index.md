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

* [sakuracoin-win32-setup-20140111-18.exe]
* [sakuracoin-qt-20140111-18.exe]
* [sakuracoind-20140111-18.exe]

Linux用のクライアントソフト

* [sakuracoin-20140111-18.tar.gz]

Mac OSX用のクライアントソフト

* なし
  * 作成する環境を持っていないので、どなたかご協力いただければ助かります。

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

* [したらば掲示板交換]

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

* [したらば掲示板]
* [外部Wiki1]

## その他のコイン

* [Sha1coin]
  * [sha1coin-win32-setup-20140111-18.exe] Windows用インストーラ版
  * [sha1coin-qt-20140111-18.exe] Windows用スタンドアローン版
  * [sha1coind-20140111-18.exe] Windows用コンソール版
  * [sha1coin-20140111-19.tar.gz] Linux用
* Monacoin野良ビルド
  * [monacoin-win32-setup-20140111-12.exe] Windows用インストーラ版
  * [monacoin-win32-setup-20140111-12.exe-mirror] Windows用インストーラ版(Mirror)
  * [monacoin-qt-20140111-12.exe] Windows用スタンドアローン版
  * [monacoind-20140111-12.exe] Windows用コンソール版
  * [monacoin-20140111-12.tar.gz] Linux用
  * [monacoin-20140111-12.tar.gz-mirror] Linux用(Mirror)

## ダウンロードについて

このページは開発者のみ編集可能に設定しておりますので、ダウンロードのURLは他の人は改ざんできません。
URLはohacのDropboxアカウントを使用しておりますので、こちらも改ざんできませんが、念のためmd5sumを付けておきます。

    e2eabc5c52e576430abb6b21466c2888 *sakuracoin-win32-setup-20140111-18.exe
    6f8aea2aeb0e537d3727f1135db380c4 *sakuracoin-qt-20140111-18.exe
    87c2912b3b07924d3514e632a762ab82 *sakuracoind-20140111-18.exe
    3eb15c289a0cb0ac81e2dae252f8c944 *sakuracoin-20140111-18.tar.gz
    032c949ec0364901e39078d35deedd06 *sakuracoin-20140104-13-win32-setup.exe
    6b49339eae97a82811cede23d8ac9d53 *sakuracoin-20140103-16-win32-setup.exe
    d5a101eb688d76f3c2c899286af1a269 *sakuracoin-20140103-13-win32-setup.exe
    d419c050074d11ed356abf8d4fb19ccd *sakuracoin-20130103-11-win32-setup.exe
    d7fe00bdbcee3fb1bc55a87fd179ddce *sakuracoin-ubuntu13.10-amd64-20140101.zip
    75be690cf6f33494fec1de579f80f9b0 *sakuracoin-win32-20140102.zip
    55a61d57f60c22677ed7a3dd5806e370 *sha1coin-win32-setup-20140111-18.exe
    52623d350fa82e3cb3dee8215e07bfae *sha1coin-qt-20140111-18.exe
    53595757fe563b8348f6f8b609758cfd *sha1coind-20140111-18.exe
    a12774e919942921d6d1ff49252eafa3 *sha1coin-20140111-19.tar.gz
    242f14656e82a47ae0fd29cae17f2b1d *sha1coin-20140104-16-win32-setup.exe
    f1eb58a3c45c47d5407fd6cf5e3c4576 *sha1coin-20140105-13-win32-setup.exe
    7e28a15e51bbf2e630fa322a3d07a4b0 *monacoin-win32-setup-20140111-12.exe
    a89cafe70dd57d6bb5b2e0ad6aac3b39 *monacoin-qt-20140111-12.exe
    bb0a5d9c60e7f9e8e690d089f0c60863 *monacoind-20140111-12.exe
    703879aba6b491368c318cb33ea655d1 *monacoin-20140111-12.tar.gz


## 旧バージョンのダウンロード
* [sakuracoin-20140104-13-win32-setup.exe]
* [sakuracoin-20140103-16-win32-setup.exe]
* [sakuracoin-20140103-13-win32-setup.exe]
* [sakuracoin-20130103-11-win32-setup.exe]
* [sakuracoin-win32-20140102.zip]
* [sakuracoin-ubuntu13.10-amd64-20140101.zip]
* [monacoin-qt]

## 寄付

[Donate-SKR], [Donate-SHA], [Donate-MONA]


[Donate-SKR]: sakuracoin:MTu6jrxp5xD6RHWeZUEpw7X5WnpmEzYTkd
[Donate-SHA]: sha1coin:SQqr32xpK6hkmDyJRvPLaLFzqzfjq1Dr6f
[Donate-MONA]: monacoin:MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY
[Bitmessage]: https://bitmessage.ch/
[Sha1coin]: http://ohac.github.io/sha1coin/
[sakuracoin-win32-setup-20140111-18.exe]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-win32-setup-20140111-18.exe
[sakuracoin-qt-20140111-18.exe]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-qt-20140111-18.exe
[sakuracoind-20140111-18.exe]: https://dl.dropboxusercontent.com/u/5745602/sakuracoind-20140111-18.exe
[sakuracoin-20140111-18.tar.gz]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140111-18.tar.gz
[sha1coin-win32-setup-20140111-18.exe]: https://dl.dropboxusercontent.com/u/5745602/sha1coin-win32-setup-20140111-18.exe
[sha1coin-qt-20140111-18.exe]: https://dl.dropboxusercontent.com/u/5745602/sha1coin-qt-20140111-18.exe
[sha1coind-20140111-18.exe]: https://dl.dropboxusercontent.com/u/5745602/sha1coind-20140111-18.exe
[sha1coin-20140111-19.tar.gz]: https://dl.dropboxusercontent.com/u/5745602/sha1coin-20140111-19.tar.gz
[sakuracoin-20140104-13-win32-setup.exe]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140104-13-win32-setup.exe
[sakuracoin-20140103-16-win32-setup.exe]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140103-16-win32-setup.exe
[sakuracoin-20140103-13-win32-setup.exe]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140103-13-win32-setup.exe
[sakuracoin-20130103-11-win32-setup.exe]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20130103-11-win32-setup.exe
[sakuracoin-win32-20140102.zip]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-win32-20140102.zip
[sakuracoin-ubuntu13.10-amd64-20140101.zip]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-ubuntu13.10-amd64-20140101.zip
[したらば掲示板交換]: http://jbbs.shitaraba.net/bbs/read.cgi/internet/19552/1388817096/l50
[したらば掲示板]: http://jbbs.shitaraba.net/internet/19552/
[外部Wiki1]: http://www59.atwiki.jp/japancryptocurrency/pages/15.html
[monacoin-win32-setup-20140111-12.exe]: https://dl.dropboxusercontent.com/u/5745602/monacoin-win32-setup-20140104-13.exe
[monacoin-qt-20140111-12.exe]: https://dl.dropboxusercontent.com/u/5745602/monacoin-qt-20140104-13.exe
[monacoind-20140111-12.exe]: https://dl.dropboxusercontent.com/u/5745602/monacoind-20140104-13.exe
[monacoin-20140111-12.tar.gz]: https://dl.dropboxusercontent.com/u/5745602/monacoin-20140111-12.tar.gz
[monacoin-win32-setup-20140111-12.exe-mirror]: http://ge.tt/23AoxjD1
[monacoin-20140111-12.tar.gz-mirror]: http://ge.tt/3AYy0kD1
[monacoin-qt]: https://dl.dropboxusercontent.com/u/5745602/monacoin-qt
