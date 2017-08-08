class PagesController < ApplicationController

	layout "application"

	def index
		@products = Product.limit(8)
	end

	def about

	end

end
