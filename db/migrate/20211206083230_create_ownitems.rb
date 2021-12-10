class CreateOwnitems < ActiveRecord::Migration[6.1]
  def change
    create_table :ownitems do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.boolean :sellstatus
      t.integer :price

      t.timestamps
    end
  end
end
