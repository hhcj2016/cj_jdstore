class MusisController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @products = Product.all.where(:category => "慕斯系列")
  end


    def add_to_cart
      @products = Product.all.where(:category => "慕斯系列")

    if !current_cart.products.include? (@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
      redirect_to :back

    end



end
