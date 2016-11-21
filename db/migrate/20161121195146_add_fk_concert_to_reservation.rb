class AddFkConcertToReservation < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key(:reservations, :concerts)
  end
end
