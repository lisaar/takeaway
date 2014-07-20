require 'twilio-ruby'

module Notifications
	def notify(customer, message)
			@messenger = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN
			@messenger.account.messages.create(
			  :from => TWILIO_NUMBER,
			  :to => customer.mobile_number,
			  :body => message
			)
	end

	private
	TWILIO_NUMBER = "+441560412031"
	ACCOUNT_SID = "ACb8e0b5d34934fdabdf2b682f3d9ba848"
	AUTH_TOKEN = "fbaf197304c4816752c857687c9cfb97"
end