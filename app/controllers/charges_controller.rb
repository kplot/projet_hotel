class ChargesController < ApplicationController
    def new
      @reservation = Reservation.find(params[:reservation_id])
      @room = @reservation.room
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
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
end
