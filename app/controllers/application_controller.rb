class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        skip_before_action :verify_authenticity_token, if: :devise_controller?, raise: false
        before_action :configure_permitted_pareameters, if: :devise_controller?

        protected

        def configure_permitted_pareameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:host, :host_name, :host_id])
        end
end