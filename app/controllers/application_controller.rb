class ApplicationController < ActionController::API
    protect_from_forgery with: :exception

    helper_method :current_user, :logged_in?, :authenticate_user!
    
    private

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def authenticate_user!
        redirect_to login_path if !logged_in?
    end
    
end
