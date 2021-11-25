# usersテーブル

| Column             | Type    | Option      |
| ------------------ | ------- | ----------- |
| email              | string  | primary key |
| encrypted_password | string  | null: false |
| nickname           | string  | null: false |
| gender             | integer | null: false |
| birthday           | date    | null: false |

## Association

- has_many :managements
- has_many :posts
- has_many :comments

# managementテーブル

| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| name       | string     |                                |
| protein    | float      |                                |
| calorie    | float      |                                |
| user       | references | null: false, foreign_key: true |

## Association

- belongs_to :user

# ingredientsテーブル

| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| protein    | float      |                                |
| calorie    | float      |                                |


# quizzesテーブル

| Column      | Type       | Option                         |
| ----------- | ---------- | ------------------------------ |
| quiz        | text       | null: false                    |
| answer      | text       | null: false                    |
| explanation | text       | null: false                    |



# postsテーブル

| Column    | Type       | Option                         |
| --------- | ---------- | ------------------------------ |
| content   | text       | null: false                    |
| user      | references | null: false, foreign_key: true |

## Association

- has_many :comments
- belongs_to :user

# commentsテーブル

| Column    | Type       | Option                         |
| --------- | ---------- | ------------------------------ |
| comment   | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| post      | references | null: false, foreign_key: true |

## Association

- belongs_to :user
- belongs_to :post
