class AddRowidToAllorders < ActiveRecord::Migration
  def change
    add_column :allorders, :ORDER_ID, :integer
  end
end
