class RemoveIdFromUpdateallorders < ActiveRecord::Migration
  def change
    remove_column :updateallorders, :id, :integer
  end
end
