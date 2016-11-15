class CreateTicket < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :tickets
      t.integer :user_id
      t.integer :concert_id
      t.date :purchase_date
    end
  end
end
