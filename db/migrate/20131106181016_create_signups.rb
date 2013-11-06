class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :name
      t.string :email_id
      t.string :password

      t.timestamps
    end
  end
end
