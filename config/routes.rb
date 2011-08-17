Blog::Application.routes.draw do
  resources :emotions

  root :to => 'emotions#index'
end
