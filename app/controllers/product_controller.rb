class ProductController < ApplicationController

	layout "application"

  def index
  	if params[:id] == nil
  		@products = Product.all
  	else
  		@products = Product.where("product_type_id = ?", params[:id])
  		Rails.logger.debug("Count: #{@products.inspect}")
  	end
  end

  def show
  	@product = Product.find_by_id(params[:id])
  end
end
