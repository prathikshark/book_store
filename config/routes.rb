Rails.application.routes.draw do
  root 'home#index'
  get 'book',to: 'book#index'
  # For deails on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
