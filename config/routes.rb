Plate::Application.routes.draw do
  devise_for :users
  root :to => "home#index"
  #get "/pages/*id" => 'pages#show', as: :page, format: false
  #root :to => "pages#show", id: 'home'
  get '/login',  to: redirect('/users/sign_in')
  get '/logout',  to: redirect('/users/sign_out')
  #
end
