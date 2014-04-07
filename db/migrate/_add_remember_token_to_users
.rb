class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
 add_column :users, :remember_token, :string
 add_index  :users,s:remember_token
  end
end
