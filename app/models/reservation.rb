class Reservation < ActiveRecord::Base
    belongs_to :user
    has_many :rooms
end
