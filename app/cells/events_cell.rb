class EventsCell < Cell::ViewModel
	property :title
	property :description
	property :start
	property :url_ticket

	def show
		render
	end

	def item
		render
	end
end
