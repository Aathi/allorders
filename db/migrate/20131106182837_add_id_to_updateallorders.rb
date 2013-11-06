class AddIdToUpdateallorders < ActiveRecord::Migration
  def change
    add_column :updateallorders, :ORDER_ID, :primary_key
  end
end
