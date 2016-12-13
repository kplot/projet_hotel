class Hotel < ActiveRecord::Base
    has_many :rooms
    validates :name, :description, presence:true
end
