class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_action :prepare_meta_tags, if: "request.get?"

	def prepare_meta_tags(options={})
		setting = Setting.first
		site        = setting.site_name ||= ""
    title       = [controller_name, action_name].join(" ")
		description = setting.site_description ||= ""
    current_url = request.url

    # Let's prepare a nice set of defaults

    defaults = {
      site:        site,
      title:       title,
      description: description,
			icon: [{:href => view_context.asset_url('favicon.ico'), :type => 'image/png'}],
			keywords:    setting.site_meta_keywords,

      og:          {url: current_url,
                    site_name: site,
                    title: title,
                    description: description,
                    type: 'website'}
    }

    options.reverse_merge!(defaults)
    set_meta_tags options
  end

end
