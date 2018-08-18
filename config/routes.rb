Rails.application.routes.draw do

  root to: "cocktails#index"
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
end



# Rails.application.routes.draw do
#   resources :cocktails, only: [:show, :new, :create] do
#     resources :doses, only: [:new, :create]
#   end
#   resources :doses, only: :destroy
#   root to: "cocktails#index"
# end
