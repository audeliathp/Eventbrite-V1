class User < ApplicationRecord
  has_many :events, foreign_key: 'guest_id', class_name: "Event"
  has_many :attendances

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true 
end
