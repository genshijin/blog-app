# DB設計
## usersテーブル
|Column|Type|Options|
|--|--|--|
|nickname|string|null:false|
|email|string|null:false, unique: true|
|password|integer|null:false|

### Association
- has_many :articles

## articlesテーブル
|Column|Type|Options|
|--|--|--|
|title|string|null:false|
|image|string||
|content|text|null:false|
|user_id|integer|null:false|

### Association
- belongs_to :user