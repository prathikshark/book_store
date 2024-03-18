Rails.application.routes.draw do
  root 'home#index'
  get 'home' ,to:'home#index'
  delete 'logout', to: 'session#destroy'  
  get 'signup' ,to: 'registration#new'
  post 'signup' ,to: 'registration#create'   

  get 'book',to: 'book#index'

  get 'cart', to:'cart#show'

  post 'cart/remove_from_cart', to: 'cart#remove_from_cart', as: :remove_from_cart

  get 'userbooks/add_book_to_user', to: 'userbooks#add_book_to_user'

  # For deails on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
