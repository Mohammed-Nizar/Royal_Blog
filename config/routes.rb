Rails.application.routes.draw do
  devise_for :users
  get 'home/createBlog'
  get 'home/loginPage'

  post 'login', to: 'home#login'
  post 'add_Item' , to: 'home#add_Item'
  get 'view_list' , to: 'home#view_list'
  get 'delete_data/:id' , to: 'home#delete_data'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
