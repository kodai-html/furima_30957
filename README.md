# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| nickname   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| last_name  | string | null: false |
| first_name | string | null: false |
| kana_last  | string | null: false |
| kana_first | string | null: false |
| birth_day  | date   | null: false |

### Association

- has_many :products
- has_many :comments

## products テーブル

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | text    | null: false |
| explain     | string  | null: false |
| category_id | integer | null: false |
| state_id    | integer | null: false |
| burden_id   | integer | null: false |
| area_id     | integer | null: false |
| date_id     | integer | null: false |
| price       | integer | null: false |
| fee         | integer ||
| profit      | integer ||

### Association

- belongs_to :users
- has_one :purchases

## address

## purchases テーブル

| Column   | Type      | Options           |
| -------- | --------- | ----------------- |
| product  | reference | foreign_key: true |
| buyer    | reference | foreign_key: true |

### Association

- has_one :address
- belongs_to :products
- belongs_to :users

## Addresses テーブル

| Column         | Type    | Options     |
| -------------- | ------- | ----------- |
| postal_code    | string  | null: false | 
| prefectures_id | integer | null: false |
| municipality   | string  | null: false |
| address        | string  | null: false |
| building       | string  | null: false |
| number         | string  | null: false |

### Association

- belongs_to :purchases