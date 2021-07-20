Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :host_details, only:[:index]
    end
  end
end
