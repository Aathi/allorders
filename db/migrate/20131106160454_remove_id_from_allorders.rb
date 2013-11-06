class RemoveIdFromAllorders < ActiveRecord::Migration
  def change
    remove_column :allorders, :ORDER_ID, :integer
  end
end
