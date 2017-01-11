Rails.application.routes.draw do
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/marklist"=>"marklist#index"
  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  resources :marklist
  get "/verification/check/:id" => "verification#check",as: :verify
  resources :verification
end
