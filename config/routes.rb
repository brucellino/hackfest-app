Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/:page' => "pages#show"

  root 'pages#home', page: "home"

  get 'login', to: redirect('/auth/github'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'home#show'
  get 'me', to: 'me#show', as: 'me'

end
