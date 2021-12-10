class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :buyeruserID
      t.integer :selleruserID
      t.integer :price

      t.timestamps
    end
  end
end
