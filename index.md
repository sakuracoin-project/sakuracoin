---
layout: default
title: Sakuracoin
---

<div style="position:absolute;top:20;left:400px">
<a href="https://twitter.com/share" class="twitter-share-button" data-via="ohac">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
<div class="fb-like" data-href="http://ohac.github.io/sakuracoin" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
<script src="http://widget.monash.pw/coin.js"></script>
&nbsp;
<script>
CoinWidgetCom.go({
	wallet_address: "MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY"
	, currency: "monacoin"
	, counter: "count"
	, alignment: "bl"
	, qrcode: true
	, auto_show: false
	, lbl_button: "寄付する"
	, lbl_address: "このアドレスにMonacoinを寄付する:"
	, lbl_count: "回の寄付"
	, lbl_amount: "MONA"
	});
</script>
</div>

# ![sakuracoin64](images/sakuracoin64.png) Sakuracoin

いつも「さくらコイン」にご協力いただき、ありがとうございます。

<ul>
{% for post in site.posts limit:10 %}
<li>
<a href="/sakuracoin{{post.url}}">{{ post.date | date_to_long_string }} : {{ post.title }}</a>
</li>
{% endfor %}
</ul>

<div id="lineChart" style="width:800px; height:150px;"></div>

## さくらコインについて

さくらコインは一瞬だけ公開されていた旧モナーコインのブロックチェインを扱える仮想通貨です。
(旧モナーコインはWindows用のバイナリしか公開されておらず、新モナーコインへ移行することが決定したため、公開停止してしまいました。モナーコインを名乗るのは混乱の元となるので、名前をさくらコインと名付けました。)

今のところ 36.2.132.153:9301 でsakuracoindを動かしているので、初期ノードとしてお使いください。
ノード数が少なく、ハッシュパワーも少ないのでポートの公開や採掘で協力していただけると助かります。

## ダウンロード

Windows用のクライアントソフト

* [sakuracoin-win32-setup-20140111-18.exe]
* [sakuracoin-win32-setup-20140111-18.exe-mirror]
* [sakuracoin-qt-20140111-18.exe]
* [sakuracoin-qt-20140111-18.exe-mirror]
* [sakuracoind-20140111-18.exe]
* [sakuracoind-20140111-18.exe-mirror]

Linux用のクライアントソフト

* [sakuracoin-20140111-18.tar.gz]
* [sakuracoin-20140111-18.tar.gz-mirror]

Mac OSX用のクライアントソフト

* なし
  * 作成する環境を持っていないので、どなたかご協力いただければ助かります。

ソースコード

* [sakuracoin]

Android用のクライアントソフト

* [ここからダウンロード]してください。(2014/01/25 20:00バージョン)
  * wallet-0.07-20140125-20.apk
    * https://github.com/ohac/sakuracoinj
    * https://github.com/ohac/sakuracoin-wallet

マインクラフト用のプラグイン

* [ここからダウンロード]してください。(2014/01/28 22:00バージョン)
  * Sakuracoinish-1.0.jar (少しソースと違う部分があります)
    * https://github.com/ohac/sakuracoinj
    * https://github.com/ohac/Sakuracoinish
  * Vault-1.2.30.jar (少しソースと違う部分があります)
    * https://github.com/ohac/Vault
    * Vaultを使う場合はChestShopなどと組み合わせて使用してください。
  * 36.2.132.153でBukkitサーバを立ち上げています。お気軽にどうぞ。コインの入手も可能です。

## さくらコインの入手(試験運用中)

下記のアドレスのいずれかにコインを送信して、ohachige.at.gmail.comに取引ID(トランザクションID)とあなたのさくらコインアドレスと交換元のコインの返送用アドレスをメールしてください。(返送用アドレスはコイン不足等のトラブルが起きた場合に使用します。)

* Sha1coin SQqr32xpK6hkmDyJRvPLaLFzqzfjq1Dr6f
  * 1口 100.00SHA => 150.00SKR
  * 最大10口(1000.00SHA)まで
* Monacoin MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY
  * 1口 1.00MONA =>  50.00SKR
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
  * プリマインはありません。人気がないため、少数の採掘者に分配されているだけです。採掘が停止するとトランザクションも停止してしまうため、止める訳にもいきません。偏りを減らすために大き目のGiveawayイベントを検討しています。
* Block reward: 50 SKR
* Block time: 1.5 minutes
* Retarget: 2400 blocks
* subsidy halves in 1051k blocks (~3 years)
* Totalcoins: 105.1 million

## 採掘所(Pools)

* [Sakura Pool]

## ブロック情報(Block explorer)

なし

## Bounties

なし(アイデア募集中)

* 例
  * Mac OSX用のクライアントソフト作成
  * Block Explorer

## Funds

なし(アイデア募集中)

* 例
  * 日本語ブログ記事1つにつき100.0SKR等

## Others

* [Webウォレット] (テスト中)
* [したらば掲示板]
* [外部Wiki1]

## その他のコイン

* ![sha1coin64](images/sha1coin64.png) [Sha1coin]
* Monacoin野良ビルド(非公式ビルド)
  * [ここからダウンロード]してください。(2014/01/19 11:00バージョン)

## ダウンロードについて

このページは開発者のみ編集可能に設定しておりますので、ダウンロードのURLは他の人は改ざんできません。
URLはohacのge.ttとDropboxアカウントを使用しておりますので、こちらも改ざんできませんが、念のためmd5sumを付けておきます。

    fdcdd790c4cc3759413a088f83c77654 *Sakuracoinish-1.0.jar
    5b0e60bb399d1d04f38ee264ea25a3c4 *Vault-1.2.30.jar
    817505b1299e17c95398c6fae4bc5025 *wallet-0.07-20140125-20.apk
    e2eabc5c52e576430abb6b21466c2888 *sakuracoin-win32-setup-20140111-18.exe
    6f8aea2aeb0e537d3727f1135db380c4 *sakuracoin-qt-20140111-18.exe
    87c2912b3b07924d3514e632a762ab82 *sakuracoind-20140111-18.exe
    3eb15c289a0cb0ac81e2dae252f8c944 *sakuracoin-20140111-18.tar.gz
    4d31ebd42c0723c521d58160cfdb1848 *monacoin-win32-setup-20140119-10.exe
    5ee5b46213cef9224e96d9b79c2a3e99 *monacoin-qt-20140119-10.exe
    6f5c82b6ff5273fb656f085e780374f6 *monacoin-20140119-11.tar.gz
    b24bbf02009f5cf6716199e5ec55eb5a *monacoind-20140119-10.exe

## 寄付

[Donate-SKR], [Donate-SHA], [Donate-MONA]

[Donate-SKR]: sakuracoin:MTu6jrxp5xD6RHWeZUEpw7X5WnpmEzYTkd
[Donate-SHA]: sha1coin:SQqr32xpK6hkmDyJRvPLaLFzqzfjq1Dr6f
[Donate-MONA]: monacoin:MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY
[Bitmessage]: https://bitmessage.ch/
[Sha1coin]: http://ohac.github.io/sha1coin/
[sakuracoin-win32-setup-20140111-18.exe]: http://ge.tt/8Ht3AkD1/v/0?c
[sakuracoin-win32-setup-20140111-18.exe-mirror]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-win32-setup-20140111-18.exe
[sakuracoin-qt-20140111-18.exe]: http://ge.tt/31nu4lD1/v/3?c
[sakuracoin-qt-20140111-18.exe-mirror]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-qt-20140111-18.exe
[sakuracoind-20140111-18.exe]: http://ge.tt/31nu4lD1/v/2?c
[sakuracoind-20140111-18.exe-mirror]: https://dl.dropboxusercontent.com/u/5745602/sakuracoind-20140111-18.exe
[sakuracoin-20140111-18.tar.gz]: http://ge.tt/64iiAkD1/v/0?c
[sakuracoin-20140111-18.tar.gz-mirror]: https://dl.dropboxusercontent.com/u/5745602/sakuracoin-20140111-18.tar.gz
[したらば掲示板交換]: http://jbbs.shitaraba.net/bbs/read.cgi/internet/19552/1388817096/l50
[したらば掲示板]: http://jbbs.shitaraba.net/internet/19552/
[外部Wiki1]: http://www59.atwiki.jp/japancryptocurrency/pages/15.html
[sakuracoin]: https://github.com/ohac/sakuracoin
[ここからダウンロード]: http://ge.tt/24MStBE1?c
[Sakura Pool]: http://sakurapool.dip.jp/
[Webウォレット]: http://coins.asiru.info/index2.html
