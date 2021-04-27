Rails.application.routes.draw do

  resources :gardens do
    resources :plants, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :plants, only: [:show, :destroy]
  # /plants/:id
end

# NEW
# /plants/new


# As a user I can see one garden's plants
# As a user I can add a plant in a garden
# As a user I can delete a plant
