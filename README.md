# usersテーブル

| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| email              | string | primary key |
| encrypted_password | string | null: false |
| nickname           | string | null: false |
| gender             | string | null: false |
| birthday           | date   | null: false |

## Association

- has_many :nutrients
- has_many :quizzes
- has_many :posts
- has_many :comments

# nutrientsテーブル

| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| aim        | text       |                                |
| calorie    | integer    |                                |
| protein    | integer    |                                |
| carbo      | integer    |                                |
| lipid      | integer    |                                |
| user       | references | null: false, foreign_key: true |

## Association

- belongs_to :user

# quizzesテーブル

| Column      | Type       | Option                         |
| ----------- | ---------- | ------------------------------ |
| quiz        | text       | null: false                    |
| answer      | text       | null: false                    |
| explanation | text       | null: false                    |
| user        | references | null: false, foreign_key: true |

## Association

- belongs_to :user

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
