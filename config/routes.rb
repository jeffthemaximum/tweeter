Rails.application.routes.draw do
  get 'search', to: 'search#index'

  get 'tweets/hello'

  root 'tweets#hello'
end