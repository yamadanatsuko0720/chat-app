class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  #4947

end
