class NaiyousController < ApplicationController
  #def index
  #  @products = Product.all
  #end



  #def show
#  @product = Product.find(params[:id])
#  end


#def index
#  if params[:search]
#    @products = Product.search(params[:search])
#  else
#    @products = Product.all
#  end
#end


def show
  @products = Product.all.where(:category => "奶油系列")
end


# def index
#    @products = Product.all
#   if params[:search]
#     @products = Product.search(params[:search]).order("created_at DESC")
#   else
#     @products = Product.all.order('created_at DESC')
#   end
# end




def index
  @products = Product.all
end

  def add_to_cart
    @product = Product.all.where(:category => "奶油系列")

    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end

    redirect_to :back
  end




end
