class ContactMessageJob
  include SuckerPunch::Job

	def perform(message)
		ContactMessage.create(:subject => message.message_subject, :name => message.name, :message => message.message, :email => message.email)
	end
end
