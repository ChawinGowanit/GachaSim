class AddUserIdToRedeemcodes < ActiveRecord::Migration[6.1]
  def change
    add_column :redeemcodes, :user_id, :integer
  end
end
