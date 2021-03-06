Rails.application.routes.draw do

  # root 'products#index'

  root 'welcome#index'

  devise_for :users

  namespace :admin do
    resources :products
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
  end

resources :products

resources :orders


resources :products do
   member do
     post :add_to_cart
   end
end


 resources :carts do
   collection do
     delete :clean
     post :checkout
   end
 end


   resources :cart_items

   resources :orders  do
       member do
         post :pay_with_alipay
         post :pay_with_wechat
         post :apply_to_cancel
       end
   end

   namespace :account do
     resources :orders
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    collection do
      get 'search'
    end
  end


  get "naiyou" => "naiyous#index"
  get "zhishi" => "zhishis#index"
  get "musi" => "musis#index"
  get "qiaokeli" => "qiaokelis#index"
  get "shuiguo" => "shuiguos#index"
  get "bingjiling" => "bingjilings#index"
  get "qingdian" => "qingdians#index"


end
