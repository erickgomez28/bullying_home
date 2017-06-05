Rails.application.routes.draw do
  get 'bullyings/index'

  get 'bullyings/show'

  get 'bullyings/edit'

  # get 'profiles/show'

  # get 'profiles/edit'

  # get 'profiles/new'

  resources :profiles do
    resources :bullyings, only: [:edit, :show, :update]
  end

  resources :bullyings, only: [:index, :show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
