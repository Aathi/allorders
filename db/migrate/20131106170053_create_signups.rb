class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :first_Name
      t.string :last_name
      t.string :email_id
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
