class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # ActiveHashを用いて、belongs_toを設定するには、
  # extend ActiveHash::Associations::ActiveRecordExtensionsと記述してmoduleを取り込みます。
  belongs_to :genre

  #空の投稿を保存できないようにする
  validates :title, :text, presence: true

  #ジャンルの選択が「--」の時は保存できないようにする
  validates :genre_id, numericality: { other_than: 1 } 
end