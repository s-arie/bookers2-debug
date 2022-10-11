class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :massage,presence:true,length:{maximum:140}
end
