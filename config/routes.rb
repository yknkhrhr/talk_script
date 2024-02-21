Rails.application.routes.draw do
  root to: "selections#index"
  resources :losses do
    collection do
      get 'search', to: 'losses#search'
    end
  end
end