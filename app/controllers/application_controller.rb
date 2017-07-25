class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_action :prepare_meta_tags, if: "request.get?"


 def prepare_meta_tags(options={})
    site        = "Black Machine"
    title       = [controller_name, action_name].join(" ")
    description = "Brazilian Soul Band"
    current_url = request.url

    # Let's prepare a nice set of defaults

    defaults = {
      site:        site,
      title:       title,
      description: description,
			icon: [{:href => view_context.asset_url('favicon.ico'), :type => 'image/png'}],
      keywords:    %w[arte contemporaneo artista editais edital residencia visual editais premios oportunidades artes plásticas salões bolsa],

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
