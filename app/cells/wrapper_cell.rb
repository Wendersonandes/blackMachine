class WrapperCell < Cell::ViewModel
  def show
    render
  end

	def hero_image
		options[:context][:hero_image]
	end

	def content
		options[:context][:content]
	end


end
