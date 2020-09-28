class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  #nameの入力がされていない場合には保存されない設定

  has_many :room_users
  has_many :rooms, through: :room_users
  #中間テーブルを使用したアソシエーション/3851

  has_many :messages
  #4947

end
