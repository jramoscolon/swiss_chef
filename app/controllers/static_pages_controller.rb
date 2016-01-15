class StaticPagesController < ApplicationController
  def index
  end

  def featured_page
  	@featured_product = Product.limit(3)
  end

end
