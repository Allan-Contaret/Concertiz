class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :users
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
    end
  end
end
