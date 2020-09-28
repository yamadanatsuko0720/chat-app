class RoomUser < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #中間テーブルを使用したアソシエーション/3851
end
