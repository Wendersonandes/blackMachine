require_dependency "admin/application_controller"

module Admin
  class EventsController < ApplicationController
    include Godmin::Resources::ResourceController

		def create
			submit_status = params[:commit].parameterize.underscore
			@event = Event.new(event_params)
			if submit_status.include?('save_and_edit')
				if @event.save
					redirect_to edit_event_path(@event)
				end
			else
				if @event.save
					redirect_to edit_event_path(@event)
				end
			end
		end

		def event_params
			params.require(:event).permit(:title, :description, :start, :url_ticket)
		end
  end
end
