# 中間テーブル
class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      #referencesで外部テーブルのカラムを参照
      #どのユーザーがどのチャットルームに参加しているかを管理/4851
      t.timestamps

    end
  end
end
