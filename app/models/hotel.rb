class Hotel < ActiveRecord::Base
    has_many :rooms
    validates :name, :description, presence:true
    belongs_to :user
end
