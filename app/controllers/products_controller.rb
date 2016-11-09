class ProductsController < ApplicationController
  def all_products_method
    @all_products = Product.all
    render 'all_products.html.erb'
  end
end