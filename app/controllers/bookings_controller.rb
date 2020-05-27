class BookingsController < ApplicationController
  skip_before_action :authenticate_user! only: [:home]

  def create
    @product = Product.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    @booking = Booking.save

    if @booking.save
      redirect_to products_path(@product)
    else
      render "product/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
