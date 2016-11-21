class AddFkUserToReservation < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key(:reservations, :users)
  end
end
