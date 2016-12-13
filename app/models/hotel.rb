class Hotel < ActiveRecord::Base
    validates :name, :description, presence:true
end
