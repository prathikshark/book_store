Rails.application.routes.draw do
  root 'home#index'
  get 'home' ,to:'home#index'

  get 'signup' ,to: 'registration#new'
  post 'signup' ,to: 'registration#create'   

  get 'login', to:'session#new'
  post 'login', to:'session#create'
  delete 'logout', to: 'session#destroy'  

  get 'admin',to:'admin#new'
  post 'admin',to:'admin#create'
  get 'show' ,to:'admin#show'
  delete 'delete' ,to:'admin#delete'
  

  get 'book',to: 'book#index'

  get 'cart', to:'cart#show'

  get 'userbooks/add_book_to_user', to: 'userbooks#add_book_to_user'

  delete 'test', to: 'userbooks#test'

  get 'payment' ,to: 'payment#index'
  post 'payment' ,to: 'payment#create'
  # For deails on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
