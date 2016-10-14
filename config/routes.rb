Rails.application.routes.draw do
  get 'checkout/index'

  get 'menu/index'

  root to: 'home#index'
  get '/home', to: 'home#index'
  get '/contact_us', to: 'contact_us#index'
  get '/menu', to: 'menu#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
