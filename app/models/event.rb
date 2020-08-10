class Event < ApplicationRecord
  has_many :attendances
  has_many :guests, through: :attendance, class_name: "User" 
  belongs_to :organizer, class_name: "User"

  validates :start_date, :presence => true,  :date => { :after_or_equal_to => Proc.new { Date.today } }
  validates :duration, :presence => true, numericality => { only_integer: true, greater_than => 0 }#, multiple de 5 
  validates :title, :presence => true, length => { in: 20..140 }
  validates :price, :presence => true, length => { in: 20..1000 }
  validates :location, presence => true

end
