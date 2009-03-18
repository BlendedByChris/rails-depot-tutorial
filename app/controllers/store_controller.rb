class StoreController < ApplicationController
  def index
    @products = Product.find_products_for_sale
  end

  def self.find_products_for_sale
    find(:all, :order => "title")
  end
end
