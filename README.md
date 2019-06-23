# DB設計
## usersテーブル
|Column|Type|Options|
|--|--|--|
|nickname|string|null:false|
|email|string|null:false, unique: true|
|password|integer|null:false|

### Association
has_many :articles

## articlesテーブル
|Column|Type|Options|
|--|--|--|
|title|string|null:false|
|image|string||
|content|text|null:false|
|user_id|integer|null:false|

### Association
belongs_to :user
has_many :articles_tags
has_many :tags, through: :articles_tags

## articles_tagsテーブル
|Column|Type|Options|
|--|--|--|
|articles_id|integer|null:false|
|tags_id|integer|null:false|

### Association
belongs_to :article
belongs_to :tag

## tagsテーブル
|Column|Type|Options|
|--|--|--|
|name|string|null:false|

### Association
has_many :articles_tags
has_many :articles, through: :articles_tags