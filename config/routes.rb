Rails.application.routes.draw do
  root to: "selections#index"
  resources :losses do
    collection do
      get 'search', to: 'losses#search'
    end
  end
  resources :frauds do
    collection do
      get 'search', to: 'frauds#search'
    end
  end
end