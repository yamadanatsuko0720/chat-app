class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #4947
  has_one_attached :image
  #Messagesテーブルの各レコードと画像ファイルを管理するimageカラムの紐付け/4763

  validates :content, presence: true
  #空の場合はDBに保存しないというバリデーション/4866
end
