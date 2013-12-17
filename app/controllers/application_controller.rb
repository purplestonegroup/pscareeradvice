class ApplicationController < ActionController::Base

	before_action :set_i18n_locale_from_params
	before_action :redirect_to_locale
	# ...
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	# ...

	protected
	def set_i18n_locale_from_params
		if params[:set_locale]
			if I18n.available_locales.map(&:to_s).include?(params[:set_locale])
				I18n.locale = params[:set_locale]
			else
				flash.now[:notice] =
					"#{params[:set_locale]} translation not available"
				logger.error flash.now[:notice]
			end
		end
	end

	def default_url_options
		{ locale: I18n.locale }		
	end

	helper_method :current_path
	def current_path
		url = request.env["PATH_INFO"]
		Rails.application.routes.recognize_path url
	end

	def redirect_to_locale
		if params[:set_locale].present?
			route = current_path
			route[:locale] = I18n.locale
  			redirect_to route
  		end
	end

end
