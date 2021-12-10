class CreateBanneritems < ActiveRecord::Migration[6.1]
  def change
    create_table :banneritems do |t|
      t.references :banner, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
