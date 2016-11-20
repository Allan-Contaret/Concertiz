class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :name
      t.integer :tickets_available
      t.string :address
      t.date :concert_date
      t.string :concert_hall

      t.timestamps
    end
  end
end
