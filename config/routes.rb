Rails.application.routes.draw do
  resources :banners
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'main' ,to: 'users#login'
  post 'main' , to: 'users#check' , as: "check"

  post "like", to: "users#like"
  post "unlike", to: "users#unlike"

  get "credit", to: "users#credit"
  post 'credit' , to: 'users#redeem' , as: "redeem"

  post "pull", to: "users#pull"
  post "pullx10", to: "users#pullx10"

  get "inventory", to: "users#inventory"

  post "sell", to: "users#sell"
  post "cancel", to: "users#cancel"

  get "market", to: "users#market"
  post "buy" ,to: "users#buy"

  get "showResult", to: "users#showResult"
end
