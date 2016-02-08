class StaticPagesController < ApplicationController
  def index
  end

  def featured_page
  	@featured_product = Product.limit(3)
  end

  def contact
  end

  def thank_you
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  ActionMailer::Base.mail(:from => @email,
	  	:to => 'jramoscolon@yahoo.com',
	  	:subject => "A new contact form message from #{@name}",
	  	:body => @message).deliver_now
   end

end
