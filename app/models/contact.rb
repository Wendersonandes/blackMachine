class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :validate => true
	attribute :message_subject, :validate => true
  attribute :nickname, :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => message_subject, 
			:to => "oldmaverick@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
