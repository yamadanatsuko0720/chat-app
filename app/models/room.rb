class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy
  #中間テーブルを使用したアソシエーション/3851
  #roomが削除されたら関連したuserとmessageが削除されるようにdependentオプションを設定/4762

  validates :name, presence: true
  #チャットルーム新規作成時はルーム名の入力は必ず必要なのでバリデーションをかける/4919

end
