class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :username
      t.string :encrypted_password
      t.string :email_id

      t.timestamps
    end
  end
end
