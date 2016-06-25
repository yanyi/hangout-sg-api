Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  namespace :api do
    namespace :v1 do
      # Users
      resources :users, only: [:show, :create, :update]
    end
  end

end
