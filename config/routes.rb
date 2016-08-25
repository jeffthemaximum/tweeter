
Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'api/tweet_create'

  post 'stored_query/create'

  get 'search', to: 'search#index'

  get 'tweets/hello'

  root 'tweets#hello'
end