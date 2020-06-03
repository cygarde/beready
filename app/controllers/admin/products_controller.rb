class Admin::ProductsController < ApplicationController

  def index
    @products = Product.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end

end
