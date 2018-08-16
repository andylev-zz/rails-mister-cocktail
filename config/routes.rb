Rails.application.routes.draw do
  get 'dose/new'
  get 'dose/create'
  get 'dose/destroy'
  get 'cocktail/index'
  get 'cocktail/new'
  get 'cocktail/show'
  get 'cocktail/edit'

  get 'ingredients/new'
  root to: "cocktails#index"
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
end
