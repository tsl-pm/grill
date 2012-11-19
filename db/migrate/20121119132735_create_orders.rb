class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :paid

      t.timestamps
    end
  end
end
