Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :host_details, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
