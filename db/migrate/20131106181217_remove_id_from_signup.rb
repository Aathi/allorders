class RemoveIdFromSignup < ActiveRecord::Migration
  def change
    remove_column :signups, :id, :integer
  end
end
