class PagesController < ApplicationController

	layout "application"

	protect_from_forgery with: :null_session

	def index
		@products = Product.limit(8)
	end

	def about

	end

	def contact

	end

end
