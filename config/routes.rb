Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :holoscopes, only: [:index, :new, :create] # do
  #   collection do
  #     get :your_number
  #   end
  # end
  get  'inquiry', to: 'inquiry#index'
  post 'inquiry/confirm', to: 'inquiry#confirm'
  post 'inquiry/thanks', to: 'inquiry#thanks'

  get '/new', to: 'numbers#new'
  get '/your_number', to: 'numbers#your_number'
  # post 'inquiry/confirm', to: 'inquiry#confirm'
  # post 'inquiry/thanks', to: 'inquiry#thanks'
end
