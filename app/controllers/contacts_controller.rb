class ContactsController < ApplicationController

	def new
    @contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
    @contact.request = request
    contact = @contact
    if @contact.deliver
			respond_to do |format| 
				format.js
			end
      ContactMessageJob.perform_async(contact)
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
	end

end
