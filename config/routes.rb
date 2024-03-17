Rails.application.routes.draw do
  root 'home#index'
  get 'home' ,to:'home#index'
  get 'book',to: 'book#index'
 get 'userbook',to: 'userbooks#add_book_to_user'
  # For deails on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
