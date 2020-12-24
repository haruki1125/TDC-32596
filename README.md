users テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| email      | string     | null: false,                   |
| password   | string     | null: false,                   |
| name       | string     | null: false,                   |

### Association
has_one :shop

shops テーブル

| shop-name        | string     | null: false,                   |
| price_id         | integer    | null: false,                   |
| item_category_id | integer    | null: false,                   |
| text             | string     | null: false,                   |

### Association
belongs :user