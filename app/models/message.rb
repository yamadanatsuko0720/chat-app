class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #4947
  has_one_attached :image
  #Messagesテーブルの各レコードと画像ファイルを管理するimageカラムの紐付け/4763

  validates :content, presence: true, unless: :was_attached?
    #テキストがなくても画像があれば投稿可能/4763

  def was_attached?
    self.image.attached?
  end

end
