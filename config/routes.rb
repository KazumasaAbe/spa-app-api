Rails.application.routes.draw do
  devise_for :users

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :host_details
    end
  end
  
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
