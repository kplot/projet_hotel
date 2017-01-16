class Reservation < ActiveRecord::Base
    belongs_to :user
    belongs_to :room
    
    def totalprice
        (leaved_at - arrived_at).to_i * room.price
    end
    
    def totalprice_cents
        totalprice * 100
    end
end
