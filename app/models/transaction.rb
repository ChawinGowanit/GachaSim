class Transaction < ApplicationRecord
	def get_sell_log(user)
		return Transaction.where("selleruserID = #{user.id}").order("transactions.updated_at").pluck(:price,:updated_at)
	end

	def get_buy_log(user)
		return Transaction.where("buyeruserID = #{user.id}").order("transactions.updated_at").pluck(:price,:updated_at)
	end
end
