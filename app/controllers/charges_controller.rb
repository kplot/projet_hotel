class ChargesController < ApplicationController
    def new
      @reservation = Reservation.find(params[:reservation_id])
      @room = @reservation.room
      @hotel = @room.hotel
      @user = @reservation.user
    end
    
    def create
      # Amount in cents
      @reservation = Reservation.find(params[:reservation_id])
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
      
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @reservation.totalprice_cents,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
        
      )
    ReservationMailer.welcome_email(current_user, @reservation).deliver_later
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
end
