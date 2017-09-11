class PagesController < ApplicationController

	def home
		@user = User.new
		prepare_meta_tags
	end

	def about
	end
	
	def contact
    @contact = Contact.new
    prepare_meta_tags title: "Contato", description: view_context.t(:short_description, scope: :app)
	end

	def downloads
	end

	def events
		@event = Event.last
		@events = Event.all
	end

	def media
		@galleries = Gallery.all
	end


  # Preview html email template
  def email
    tpl = (params[:layout] || 'hero').to_sym
    tpl = :hero unless [:email, :hero, :simple].include? tpl
    file = 'user_mailer/welcome_email'
    @user = (defined?(FactoryGirl) \
      ? User.new( FactoryGirl.attributes_for :user )
      : User.new( email: 'test@example.com', first_name: 'John', last_name: 'Smith' ))
    render file, layout: "emails/#{tpl}"
    if params[:premail] == 'true'
      puts "\n!!! USING PREMAILER !!!\n\n"
      pre = Premailer.new(response_body[0],  warn_level: Premailer::Warnings::SAFE, with_html_string: true)
      reset_response
      # pre.warnings
      render text: pre.to_inline_css, layout: false
    end
  end

  def error
    redirect_to root_path if flash.empty?
  end
end
