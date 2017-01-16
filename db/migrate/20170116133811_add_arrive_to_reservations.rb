class AddArriveToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :arrived_at, :date
    add_column :reservations, :leaved_at, :date
  end
end
