Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :update, :destroy]
    end
  end

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :tags, only: [:index]
      resources :host_details do
        member do
          patch 'update_acceptable'
          resources :tags, only: [:create]
        end
      end
    end
  end
  
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
