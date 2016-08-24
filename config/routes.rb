Rails.application.routes.draw do
  get 'tweets/new'

  root 'application#hello'
end