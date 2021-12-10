class CreateRedeemcodes < ActiveRecord::Migration[6.1]
  def change
    create_table :redeemcodes do |t|
      t.string :code
      t.integer :creditAmount
      t.boolean :status

      t.timestamps
    end
  end
end
