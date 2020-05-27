class ProductsController < ApplicationController
#skip_before_action :authenticate_user! only: [:home]
before_action :set_product, only: [:show, :edit, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product = Product.save
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        redirect_to @product
      else
        render :edit
      end
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

private

  def set_product
    @product= Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :state, :unit_price, :category, :city)
  end

end
