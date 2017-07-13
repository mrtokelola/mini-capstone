class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    product = Product.new(name: params[:form_name], price: params[:form_price], description: params[:form_description], image: params[:form_image])
    product.save
    render "create.html.erb"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.html.erb"
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "edit.html.erb"
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.image = params[:image]
    product.description = params[:description]
    product.save
    render "update.html.erb"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render "destroy.html.erb"
  end
end

