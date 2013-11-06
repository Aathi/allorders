class CreateAllorders < ActiveRecord::Migration
  def change
    create_table :allorders do |t|
      t.string :CREATED_DATE
      t.string :PERFORMER
      t.string :CATEGORY
      t.string :DURATION
      t.string :QUALITY
      t.string :DELIVERY_TIME
      t.string :ORDER_STATE
      t.string :UPLOAD_VIDEO
      t.string :Performer_TOTAL
      t.string :C4U_commission
      t.string :Gross_Total

      t.timestamps
    end
  end
end
