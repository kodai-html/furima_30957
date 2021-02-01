# テーブル設計

## users テーブル

| Column     | Type | Options|
| ---------- | ------- | ---- |
| nickname   | string ||
| email      | string ||
| password   | string | |
| last_name  | string ||
| first_name | string ||
| kana_last  | string ||
| kana_first | string ||
| year       | ||
| month      |||
| day        |||

### Associatio

- has_many :products
- has_many :comments

## products テーブル

| Column   | Type | Options|
| -------- | ---- | ---- |
| image    |||
| p_name   |||
| explain  |||
| category |||
| state    |||
| burden   |||　
| area     |||
| date     |||
| price    |||
| fee      |||
| profit   |||

### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| products  | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :products