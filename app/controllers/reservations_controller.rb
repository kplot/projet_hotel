class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :set_hotel
  before_action :set_room
  
  # GET /reservations
  # GET /reservations.json
  def index
    @reservations = Reservation.all
  end

  # GET /reservations/1
  # GET /reservations/1.json
  def show
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
    if user_signed_in?
     @reservation.user = current_user if user_signed_in?
    end  
  end

  # GET /reservations/1/edit
  def edit
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.room = @room
    @reservation.user = current_user if user_signed_in?
  
    respond_to do |format|
      if @reservation.save
        if user_signed_in?
             format.html { redirect_to new_reservation_charge_path(@reservation), notice: 'Reservation was successfully created.' }
             
           else
             format.html {redirect_to new_reservations_user_registration_path(@reservation), notice: 'Reservation was successfully created.' }
        end 
       
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
  end
  

  # PATCH/PUT /reservations/1
  # PATCH/PUT /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end
end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  
    def set_hotel
      @hotel = Hotel.find(params[:hotel_id])
    end
    
    def set_room
      @room = Room.find(params[:room_id])
    end
    
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end
    
    def reservation_params
      params.fetch(:reservation).permit(:arrived_at, :leaved_at)
    end
end
