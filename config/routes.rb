Rails.application.routes.draw do

  # root to: 'application#home'

  namespace :api do
    namespace :v1 do
      resources :boxes do
        resources :items
      end
    end
  end

end
