class Redeemcode < ApplicationRecord
	validates :code, uniqueness: true

	def get_redeem_log(user)
		return Redeemcode.where("user_id = #{user.id}").order("redeemcodes.updated_at").pluck(:creditAmount,:code,:updated_at)
	end
end
