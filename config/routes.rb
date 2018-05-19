Rails.application.routes.draw do
  root 'wechats#index'
  resources :wechats do
    collection do
      get :welcome
    end
  end
end
