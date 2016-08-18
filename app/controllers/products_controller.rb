class ProductsController < ApplicationController
  def index
    @products= Product.all 
  end

  def new
    @category= Category.all
  end

  def create
    category = Category.find(params[:product][:category])
    product= Product.create(name: params[:product][:name], description: params[:product][:description], pricing: params[:product][:pricing], category_id: params[:product][:category])
    redirect_to '/'
  end

  def show
    @product= Product.find(params[:id])
    @comments= @product.comments
  end

  def edit
    @product= Product.find(params[:id])
    @categories= Category.all

  end

  def update
    category= Category.find(params[:id])
    product= Product.find(params[:id])
    product.update(name: params[:product][:name], description: params[:product][:description], pricing: params[:product][:pricing], category_id: params[:product][:category])
    redirect_to '/'

  end

  def destroy
    product= Product.find(params[:id])
    product.destroy
    redirect_to '/'
  end


end
