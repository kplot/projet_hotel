class Reservation < ActiveRecord::Base
    belongs_to :user
    belongs_to :room
    validates :leaved_at, :arrived_at, :room, presence: true
    validate :leaved_at_cannot_be_before_arrived_at
    validate :already_booked

    
    def nb_night
        (leaved_at - arrived_at).to_i
    end
    
    def totalprice
        nb_night* room.price
    end
    
    def totalprice_cents
        totalprice * 100
    end
    
    def leaved_at_cannot_be_before_arrived_at
        if leaved_at && arrived_at && leaved_at <= arrived_at
            errors.add(:leaved_at, "can't be before or equal arrived at")
        end
    end
    
    def already_booked
        if leaved_at && arrived_at
            (arrived_at..(leaved_at - 1.days)).each do |r|
                if Reservation.where(room_id: room_id).where("reservations.arrived_at <= ? AND reservations.leaved_at >= ?", r, r + 1.days).count > 0
                    errors.add(:room, "already booked")
                    return
                end
            end
        end
    end
end

