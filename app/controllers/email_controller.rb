class EmailController < ApplicationController
	protect_from_forgery with: :null_session

  def create
  		@email = Email.new(:email_id => params[:email])

  		@email.save

  		redirect_to(:controller => "pages", :action => "index")
  end
end
