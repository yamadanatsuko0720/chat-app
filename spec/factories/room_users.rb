# 中間テーブルであるroom_usersテーブルの値を定義するために作成したファイル/4765
FactoryBot.define do
  factory :room_user do
    association :user
    association :room
  end
end