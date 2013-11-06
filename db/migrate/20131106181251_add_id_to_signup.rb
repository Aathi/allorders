class AddIdToSignup < ActiveRecord::Migration
  def change
    add_column :signups, :user_id, :primary_key
  end
end
