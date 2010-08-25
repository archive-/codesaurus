Codesaurus::Application.routes.draw do |map|
  resources :features
  root :to => 'features#index'
end
