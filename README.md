# Hello Protein(栄養管理アプリ)
## タンパク質をしっかり摂取して元気な体を手に入れたい、そんな人を応援するアプリです。

# 概要
* 一日に必要な摂取量を確保できるようタンパク質の摂取記録を管理します。
* 楽しく頑張れるように投稿機能によりユーザー同士で繋がれます。
* タンパク質の知識をクイズ機能で楽しく学べます。

# URL
* https://original-37109.herokuapp.com/
* ID: kineeeecchi
* PASS: 0180

# 利用方法
* トップページのヘッダーから新規登録を行います。
* 日々、トップページのタンパク質管理機能で摂取記録を追加・管理します。
* 楽しく頑張るために、写真や呟きの投稿機能やクイズによる学習機能が利用できます。

# アプリケーションを作成した背景
* タンパク質不足の方が多いと言われている現代。普段、栄養管理や運動の機会のない方、疲れを感じやすくなってきた方々が、まずはシンプルにタンパク質に絞って楽しく栄養管理ができる、そして元気な体づくりの一助になれれば幸いです。

# 実装機能紹介
[![Image from Gyazo](https://i.gyazo.com/6104c74919da1c10be7c8c6679b73480.png)](https://gyazo.com/6104c74919da1c10be7c8c6679b73480)
## 1. 栄養管理機能
摂取した食べ物とタンパク質、カロリーを追加すると、今日の合計値が表示され、摂取量を管理できます。
## 2. 目標設定機能
目標宣言と一日の必要摂取量を設定します。
## 3. 投稿機能
ユーザー同士で繋がりながら、日々のヘルシーライフを楽しく実現します。
## 4. クイズ機能
クイズ学習でタンパク質の知識を深めて、栄養管理に役立てます。

# 追加実装予定
* 投稿に対してのイイネ機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/93936d2c30c62998974a8b00399130e8.png)](https://gyazo.com/93936d2c30c62998974a8b00399130e8)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/58fbaaceea1f633ee9d086e3c35075df.png)](https://gyazo.com/58fbaaceea1f633ee9d086e3c35075df)

# 開発環境
* フロントエンド： HTML,CSS/ JavaScript
* バックエンド： Ruby/ Ruby on Rails
* インフラ： AWS(S3)/ MySQL
* テスト： RSpec
* テキストエディタ： Visual Studio Code

# ローカルでの動作方法
* 以下、コマンドを順に実行してください。
* % git clone https://github.com/kineeeecchi/original-37109.git
* % cd original-37109
* % bundle install
* % yarn install
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
- has_one  :aim

# managementsテーブル

| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| name       | string     |                                |
| protein    | float      |                                |
| calorie    | float      |                                |
| user       | references | null: false, foreign_key: true |

## Association

- belongs_to :user

# aimsテーブル

| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| goal       | string     |                                |
| protein    | string     | null: false                    |
| calorie    | string     |                                |
| user       | references | null: false, foreign_key: true |

## Association

- belongs_to :user

# ingredientsテーブル

| Column      | Type       | Option                         |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| protein     | float      | null: false                    |
| calorie     | float      | null: false                    |
| category_id | integer    | null: false                    |


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
