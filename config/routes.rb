Rails.application.routes.draw do
  post 'tweets/new'

  get 'search', to: 'search#index'

  get 'tweets/hello'

  root 'tweets#hello'
end