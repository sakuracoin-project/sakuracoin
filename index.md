---
layout: default
title: Sakuracoin
---

<div style="position:absolute;top:20;left:400px">
<a href="https://twitter.com/share" class="twitter-share-button" data-via="ohac">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
<div class="fb-like" data-href="http://ohac.github.io/sakuracoin" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
</div>

# ![sakuracoin64](images/sakuracoin64.png) Sakuracoin

いつも「さくらコイン」にご協力いただき、ありがとうございます。

## さくらコインについて

さくらコインは2013/12/23に約8時間の間だけ公開されていた旧モナーコインのブロックチェインを扱える仮想通貨です。
(旧モナーコインはWindows用のバイナリしか公開されておらず、新モナーコインへ移行することが決定したため、公開停止してしまいました。モナーコインを名乗るのは混乱の元となるので、名前をさくらコインと名付けました。)

ノード数が少なく、ハッシュパワーも少ないのでポートの公開や採掘で協力していただけると助かります。

## ダウンロード

Windows用のクライアントソフト

* [ここからダウンロード]してください。(2014/02/04 22:00バージョン)
  * sakuracoin-win32-setup-20140204-22.exe
  * sakuracoin-qt-20140204-22.exe
  * sakuracoind-20140204-22.exe

Linux用のクライアントソフト

* [ここからダウンロード]してください。(2014/02/04 22:00バージョン)
  * sakuracoin-20140204-22.tar.gz

Mac OSX用のクライアントソフト

* なし
  * 作成する環境を持っていないので、どなたかご協力いただければ助かります。

ソースコード

* [sakuracoin]

Android用のクライアントソフト

* [GitHubからダウンロード]してください。(2014/02/02 22:00バージョン)

マインクラフト用のプラグイン

* [ge.ttからダウンロード]してください。(2014/01/28 22:00バージョン)
  * Sakuracoinish-1.0.jar (少しソースと違う部分があります)
    * https://github.com/ohac/sakuracoinj
    * https://github.com/ohac/Sakuracoinish
  * Vault-1.2.30.jar (少しソースと違う部分があります)
    * https://github.com/ohac/Vault
    * Vaultを使う場合はChestShopなどと組み合わせて使用してください。
  * 36.2.132.153でBukkitサーバを立ち上げています。お気軽にどうぞ。コインの入手も可能です。(現在、停止中です。)

## さくらコインの入手

CPUやGPUの採掘により入手できます。現段階ではcgminerというソフトによるGPU採掘がおすすめです。ソロマイニングという手法で採掘可能です。採掘難易度は日々変動しますので、こまめにチェックされることをおすすめします。nVidiaのGPUの場合はcudaminerというソフトがありますが残念ながら効率はかなり落ちます。CPUの場合はcpuminerというソフトがありますが、おすすめはしません。CPUの場合は採掘所(プール)を使うことや、他のCPUでしか採掘できないコイン(Sha1coinなど)を採掘して交換を試みることも検討された方がよいです。

## 外部の交換所(Exchange)

* [Twitterウォレット] (Ripple内で取引可能)
* [したらば掲示板交換]
* ヤフオクやモナオクでの販売/交換もあるようです。
* 投票中
  * [MintPal](https://www.mintpal.com/voting#SKR)
  * [ICURREX](https://www.icurrex.com/coin_poll)

## sakuracoin.conf 設定例

    rpcuser=user
    rpcpassword=pass
    addnode=36.55.238.28:9301

## 仕様

* Algorithm: Scrypt
* Premine: 42 blocks (2100 SKR)
  * プリマインはほぼありません。旧モナー公開直前に42ブロック(2100 SKR)採掘されていますが、誤差レベルです。極端に採掘者が減った時期があり、その期間の報酬は少数の採掘者に分配されています。採掘が停止するとトランザクションも停止してしまうため、止める訳にもいきませんでした。この頃の偏りを減らすために大き目のGiveawayイベントを検討しています。欲しい人は名乗り出てください。名乗り出てもらわないことにはGiveawayイベントは成立しませんので。
* Block reward: 50 SKR
* Block time: 1.5 minutes
* Retarget: 2400 blocks
* subsidy halves in 1051k blocks (~3 years)
* Totalcoins: 105.1 million

## 採掘所(Pools)

* [NOMP]
* [Lava Pool]
* [Sakura Pool]
* [SakuraCoin SKR mining pool](http://skr.crypto-hamsters.com/)

## ブロック情報(Block explorer)

* [Abe]

## Others

* [Twitterウォレット]
* [Webウォレット] (テスト中)
* [したらば掲示板]
* [外部Wiki1]
* [外部Wiki2]
* chiraura http://localhost:22266/test/read.cgi/cryptocurrency/1391240429/2
* [コイン寄付ボタン]
* [暗号通貨寄付ウィジェット]
* [SkrcShop]
* [TANUO PRO]
* [monagraph]

## その他のコイン

* ![sha1coin64](images/sha1coin64.png) [Sha1coin]
  * 現在、CPUでのみ採掘可能なコインです。2ch等で使用されているトリップ(tripcodes)の探索も同時に行うことができます。GPUのない環境におすすめです。
* Monacoin
  * 2014/01/01 9:00 JSTに世界同時公開した新生モナーコインです。さくらコインはモナーコインとの共存を模索しております。
  * [http://keystore00.github.io/](http://keystore00.github.io/)にて現時点での最新が配布されています。公式サイトよりも新しく日本語対応が進んでおり、インストーラ形式もあるのでおすすめです。

## ダウンロードについて

念のためmd5sumを付けておきます。ミラー等からダウンロードされた場合は特にご注意ください。

    53c1cfa636a79c1994815ed3a0b4efa8 *sakuracoin-20140204-22.tar.gz
    621c05a3fddeeea61156dd152cf07c37 *sakuracoind-20140204-22.exe
    8362c27a0513b7cc308549c20a166d13 *sakuracoin-qt-20140204-22.exe
    4e1197039492ea5d84b573c505690312 *sakuracoin-win32-setup-20140204-22.exe
    fdcdd790c4cc3759413a088f83c77654 *Sakuracoinish-1.0.jar
    5b0e60bb399d1d04f38ee264ea25a3c4 *Vault-1.2.30.jar
    a8e04376804f3d4ea00133194b3898a2 *wallet-0.07-20140201-14.apk

## 寄付

<script src="http://coindonationwidget.com/widget/coin.js"></script>
<script>
  CoinWidgetCom.go({
    wallet_address: "MNjFh6TvqYRS2xZMyfEcuKMhiitacKvysY"
    , currency: "monacoin"
    , counter: "count"
    , qrcode: true
    , auto_show: false
    , decimals: 4
    , lbl_button: "寄付する"
    , lbl_address: "以下のアドレスに寄付する:"
    , lbl_count: "回"
    , lbl_amount: "MONA"
  });
</script>
<script>
  CoinWidgetCom.go({
    wallet_address: "MTu6jrxp5xD6RHWeZUEpw7X5WnpmEzYTkd"
    , currency: "sakuracoin"
    , counter: "count"
    , qrcode: true
    , auto_show: false
    , decimals: 4
    , lbl_button: "寄付する"
    , lbl_address: "以下のアドレスに寄付する:"
    , lbl_count: "回"
    , lbl_amount: "SKR"
  });
</script>
<script>
  CoinWidgetCom.go({
    wallet_address: "SQqr32xpK6hkmDyJRvPLaLFzqzfjq1Dr6f"
    , currency: "sha1coin"
    , counter: "count"
    , qrcode: true
    , auto_show: false
    , decimals: 4
    , lbl_button: "寄付する"
    , lbl_address: "以下のアドレスに寄付する:"
    , lbl_count: "回"
    , lbl_amount: "SHA"
  });
</script>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

[Bitmessage]: https://bitmessage.ch/
[Sha1coin]: http://ohac.github.io/sha1coin/
[ここからダウンロード]: https://github.com/ohac/sakuracoin/releases
[したらば掲示板交換]: http://jbbs.shitaraba.net/bbs/read.cgi/internet/19552/1388817096/l50
[したらば掲示板]: http://jbbs.shitaraba.net/internet/19552/
[外部Wiki1]: ttp://www59.atwiki.jp/sakuracoin/
[外部Wiki2]: ttp://www59.atwiki.jp/japancryptocurrency/pages/15.html
[sakuracoin]: https://github.com/ohac/sakuracoin
[GitHubからダウンロード]: https://github.com/ohac/sakuracoin-wallet/releases/
[ge.ttからダウンロード]: http://ge.tt/8AI28VH1?c
[Sakura Pool]: http://sakurapool.dip.jp/
[Twitterウォレット]: http://www.sighash.info/
[Webウォレット]: http://coins.asiru.info/index2.html
[コイン寄付ボタン]: http://bitcoinlove.lv9.co/
[Abe]: http://abe.sighash.info/
[SkrcShop]: http://skrcshop.blog.fc2.com/
[TANUO PRO]: http://tanuo6.wix.com/tanuotrade
[暗号通貨寄付ウィジェット]: http://coindonationwidget.com/jp/
[Lava Pool]: http://new.lavapool.info/
[monagraph]: http://monagraph.com/
[NOMP]: http://www.sighash.info:8080/
