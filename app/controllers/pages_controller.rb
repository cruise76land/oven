class PagesController < ApplicationController

	layout "application"

	protect_from_forgery with: :null_session

	def index
		@products = Product.limit(8)
	end

	def about

	end

	def mailme
		Rails.logger.debug("My object: #{params[:email]}")
		redirect_to(:controller => "pages", :action => "index")
	end

end
