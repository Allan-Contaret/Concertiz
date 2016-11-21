class RemoveReset < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :reset_password_token, :string, :default => nil
  	remove_column :users, :reset_password_token_expires_at, :datetime, :default => nil
  	remove_column :users, :reset_password_email_sent_at, :datetime, :default => nil
  end
end
