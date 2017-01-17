class Reservation < ActiveRecord::Base
    belongs_to :user
    belongs_to :room
    validates :leaved_at, :arrived_at, presence: true
    validate :leaved_at_cannot_be_before_arrived_at
    
    
    def totalprice
        (leaved_at - arrived_at).to_i * room.price
    end
    
    def totalprice_cents
        totalprice * 100
    end
    
     def leaved_at_cannot_be_before_arrived_at
        if leaved_at && arrived_at && leaved_at <= arrived_at
          errors.add(:leaved_at, "can't be before or equal arrived at")
        end
     end
     



    
    
    
    
    
end
