Codesaurus::Application.routes.draw do |map|
  resources :features
  root :to => 'features#index'
  get '/search' => 'features#index', :as => 'search'
end
