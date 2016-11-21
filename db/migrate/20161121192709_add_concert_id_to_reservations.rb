class AddConcertIdToReservations < ActiveRecord::Migration[5.0]
  def change
  	add_column :reservations, :concert_id, :integer
  end
end
