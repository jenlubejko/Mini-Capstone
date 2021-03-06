class ProductsController < ApplicationController
  def index
    @product = Product.all
    render 'index.html.erb'
  end

  def new 
    render 'new.html.erb'
  end 

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image: params["image"],
      description: params["description"]
    )
    product.save
    render 'create.html.erb'
  end 

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'show.html.erb'
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'edit.html.erb'
  end

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.name = params[:name]
    product.price = params[:price]
    product.image = params[:image]
    product.description = params[:description]
    product.save
    render 'update.html.erb'
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    product.destroy
    render 'destroy.html.erb'
  end
end