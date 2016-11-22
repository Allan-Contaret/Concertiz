class AddNumberticketsToReservation < ActiveRecord::Migration[5.0]
  def change
  	add_column :reservations, :tickets_number, :integer
  end
end
