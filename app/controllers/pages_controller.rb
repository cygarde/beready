class PagesController < ApplicationController
  def home
  end

  def index
    @products = products.all
  end
end
