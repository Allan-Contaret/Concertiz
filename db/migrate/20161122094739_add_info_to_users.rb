class AddInfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :admin, :boolean, :default => true
  end
end
