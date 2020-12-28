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

| shop-name        | string     | null: false,                   |
| price_id         | integer    | null: false,                   |
| item_category_id | integer    | null: false,                   |
| info             | text       | null: false,                   |
| user             | references | null: false, foreign_key: true |

### Association
belongs :user