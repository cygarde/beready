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
      format.html { redirect_to @product, notice: Product was successfully created.’ }
      format.json { render :show, status: :created, location: @product }
    else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
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
        format.html { redirect_to @product, notice: ‘product was successfully updated.’ }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
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
