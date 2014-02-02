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

* [ここからダウンロード]してください。(2014/02/01 20:00バージョン)
  * sakuracoin-win32-setup-20140201-20.exe
  * sakuracoin-qt-20140201-20.exe
  * sakuracoind-20140201-20.exe

Linux用のクライアントソフト

* [ここからダウンロード]してください。(2014/02/01 21:00バージョン)
  * sakuracoin-20140201-21.tar.gz

Mac OSX用のクライアントソフト

* なし
  * 作成する環境を持っていないので、どなたかご協力いただければ助かります。

ソースコード

* [sakuracoin]

Android用のクライアントソフト

* [GitHubからダウンロード]してください。(2014/02/01 14:00バージョン)

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
* [外部Wiki2]
* chiraura http://localhost:22266/test/read.cgi/cryptocurrency/1391240429/2
* [コイン寄付ボタン]

## その他のコイン

* ![sha1coin64](images/sha1coin64.png) [Sha1coin]
* Monacoin
  * [http://keystore00.github.io/](http://keystore00.github.io/) の方が新しいので配布をやめました。

## ダウンロードについて

このページは開発者のみ編集可能に設定しておりますので、ダウンロードのURLは他の人は改ざんできません。
URLはohacのge.ttとDropboxアカウントを使用しておりますので、こちらも改ざんできませんが、念のためmd5sumを付けておきます。

    60b88b56d346bc9adf302a82462a0247 *sakuracoin-20140202-10.tar.gz
    04ae4dabb36598d024aa13acd54923d7 *sakuracoind-20140202-10.exe
    59d96c12188da9bed28b3333101abfd9 *sakuracoin-qt-20140202-10.exe
    cb0cfcc61d741ab521fcad71940cab56 *sakuracoin-win32-setup-20140202-10.exe
    fdcdd790c4cc3759413a088f83c77654 *Sakuracoinish-1.0.jar
    5b0e60bb399d1d04f38ee264ea25a3c4 *Vault-1.2.30.jar
    a8e04376804f3d4ea00133194b3898a2 *wallet-0.07-20140201-14.apk

## 寄付

[Donate-SKR], [Donate-SHA], [Donate-MONA]

[Donate-SKR]: sakuracoin:MTu6jrxp5xD6RHWeZUEpw7X5WnpmEzYTkd
[Donate-SHA]: sha1coin:SQqr32xpK6hkmDyJRvPLaLFzqzfjq1Dr6f
[Donate-MONA]: monacoin:MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY
[Bitmessage]: https://bitmessage.ch/
[Sha1coin]: http://ohac.github.io/sha1coin/
[ここからダウンロード]: https://github.com/ohac/sakuracoin/releases
[したらば掲示板交換]: http://jbbs.shitaraba.net/bbs/read.cgi/internet/19552/1388817096/l50
[したらば掲示板]: http://jbbs.shitaraba.net/internet/19552/
[外部Wiki1]: http://www59.atwiki.jp/sakuracoin/
[外部Wiki2]: http://www59.atwiki.jp/japancryptocurrency/pages/15.html
[sakuracoin]: https://github.com/ohac/sakuracoin
[GitHubからダウンロード]: https://github.com/ohac/sakuracoin-wallet/releases/
[Sakura Pool]: http://sakurapool.dip.jp/
[Webウォレット]: http://coins.asiru.info/index2.html
[コイン寄付ボタン]: http://bitcoinlove.lv9.co/
