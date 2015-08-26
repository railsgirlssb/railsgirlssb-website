Rails.application.routes.draw do
  root 'home#index'

  get '/legal_info', to: 'home#legal_info'
end
