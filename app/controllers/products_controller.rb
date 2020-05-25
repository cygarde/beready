class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new(product_params)
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
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
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
    @product = product.find(params[:id])
    @product.destroy
  end

private

  def product_params
    params.require(:product).permit(:name, :decription, :state, :unit_price, :category, :city)
  end

end
