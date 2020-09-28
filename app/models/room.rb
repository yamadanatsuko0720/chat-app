class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  #中間テーブルを使用したアソシエーション/3851

  validates :name, presence: true
  #チャットルーム新規作成時はルーム名の入力は必ず必要なのでバリデーションをかける

end
