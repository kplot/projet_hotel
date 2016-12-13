class Room < ActiveRecord::Base
  belongs_to :hotel
  validates :name, presence: true
end
