サーバ構築エビデンス収集ツール Redmine プラグイン
=================================================

システム概要
------------

Redmineにエビデンス収集結果の検索機能を追加します

* Redmineデータベースにサーバ構築エビデンスを蓄積
* Redmineメニューに構築エビデンスの検索ページを追加
* チケットのカスタムフィールドで検索ページとリンク

システム要件
------------

* Redmine 3.0 以上
* MySQL 5.5 以上
* gradle-server-acceptance v0.1.6 以上

ビルド方法
----------

事前に、Redmine が構築された Linux 環境が必要です。
ここでは、CentOS6 上のユーザホームディレクトリ下に、
Redmine を構築した環境で手順を記します。

**プラグインの配布**

redmine/plugins にディレクトリ移動し、git clone でプラグインプロジェクトを複製。

```
cd ~/redmine/plugins
git clone http://github.com/frsw3nr/redmine_getconfig
```

**Ruby ライブラリのインストール**

```
cd ~/redmine
bundle install
```

**データベース初期化**

Redmine データベース内にエビデンス収集用テーブルを作成

```
bundle exec bin/rake redmine:plugins:migrate
```

作成したテーブルを utf8 から utf8mb4 にコード変更

```
mysql -u root -p redmine < docs/db_change_utf8_to_utf8mb4.sql
```

利用方法
--------

**エビデンス収集**

```
getconfig
```

**エビデンス収集結果登録**

```
getconfig -u db
getconfig -u db-all
```

**エビデンス収集結果の検索**

```
http://{Redmineサーバ}:3000/inventory/{検査対象サーバ名}
```

**Redmine カスタムフィールドのカスタマイズ**

メニュー管理、カスタムフィールドで以下のカスタムフィールど追加することで、
チケット画面から検索ページをリンクすることが可能です

* 書式 : 「テキスト」を選択
* 名称 : 「インベントリ情報」を入力
* 値に設定するリンクURL : 「/redmine/inventory/%value%」または、「/inventory/%value%」を入力
    * Redmine のベース URL に合わせて設定してください

リファレンス
------------

* [Gradle server acceptance](https://github.com/frsw3nr/gradle-server-acceptance)
* [Plugin Tutorial](http://www.redmine.org/projects/redmine/wiki/Plugin_Tutorial)

AUTHOR
------

Minoru Furusawa <minoru.furusawa@toshiba.co.jp>

COPYRIGHT
-----------

Copyright 2014-2017, Minoru Furusawa, Toshiba corporation.
