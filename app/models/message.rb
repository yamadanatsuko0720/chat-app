class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #4947

  validates :content, presence: true
  #空の場合はDBに保存しないというバリデーション/4866
end
