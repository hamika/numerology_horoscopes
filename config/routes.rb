Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/new', to: 'numbers#new'
  get '/your_number', to: 'numbers#your_number'
end
