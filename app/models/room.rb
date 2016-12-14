class Room < ActiveRecord::Base
  belongs_to :hotel
  validates :name, presence: true
  belongs_to :reservation
end
