Rails.application.routes.draw do
  get 'tweets/hello'

  root 'tweets#hello'
end