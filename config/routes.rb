Rails.application.routes.draw do
  root 'home#index'

  match 'none_js', to: 'home#none_js', via: [:get, :post]
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
