class CreateTicket < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :tickets
      t.add_foreign_key :users
      t.add_foreign_key :concerts
      t.date :purchase_date
    end
  end
end
