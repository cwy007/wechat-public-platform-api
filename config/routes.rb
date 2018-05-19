Rails.application.routes.draw do
  root 'wechats#index'
  resources :wechats
end
