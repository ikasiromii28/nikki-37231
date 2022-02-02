## usersテーブル

| Column             | Type       | Options                    |
| ------------------ | ---------- | -------------------------- |
| nickname           | string     | null: false                |
| email              | string     | null: false, UNIQUE: true  |
| birthday           | date       | null:false                 |
| encrypted_password | string     | null: false                |

### Association
- has_many :posts
- has_many :comments

## Postsテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| title           | string     | null: false                    |
| text            | string     | null: false                    |
| date            | date       | null: false                    |
| mood            | integer    | null: false                    |
| weather         | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments


## Commentsテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| comments        | string     | null: false                    |
| user            | references | null: false, foreign_key: true |
| post            | references | null: false, foreign_key:true  |

### Association

- belongs_to :user 
- belongs_to :post
