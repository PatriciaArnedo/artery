class ApplicationController < ActionController::Base

    before_action :current_user
    #before_action :require_login

    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

   

    def require_login
        redirect_to new_user_path unless current_user
    end

    
end
