Rails.application.routes.draw do
  root "pages#home"
  get "/about"=>"pages#about"
  get "/contact"=>"pages#contact"

  resources :employees
  resources :users
end
