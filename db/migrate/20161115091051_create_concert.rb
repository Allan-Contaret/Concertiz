class CreateConcert < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :concerts
      t.integer :tickets_availible
      t.string :adresse
      t.date :concert_date
      t.string :concert_hall
    end
  end
end
