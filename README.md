# アプリケーション名
TDC-32596
# アプリケーション概要
豊田市の飲食店検索サイト
# URL
http://52.196.206.142
# テスト用アカウント
email aaa@aaa
password aaa111
# ペリソナ
20代から30代くらい
# 利用方法
カテゴリーからお店をさがせます。
できれば、ラインを追加していただきそこから探していただきたいです。
# 目指した課題解決
ラインから簡単にお店探しをしたい。
値段別でお店探しがしたい
# 洗い出した要件
ライン追加機能
公式ライン作成
カテゴリーボタン作成
カテゴリー別ページ作成
ユーザー登録機能作成

# テーブル設計

## users テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| email      | string     | null: false,                   |
| password   | string     | null: false,                   |
| name       | string     | null: false,                   |

### Association
has_many :shops

## shops テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| shop-name        | string     | null: false,                   |
| price_id         | integer    | null: false,                   |
| item_category_id | integer    | null: false,                   |
| info             | text       | null: false,                   |
| user             | references | null: false, foreign_key: true |

### Association
belongs :user