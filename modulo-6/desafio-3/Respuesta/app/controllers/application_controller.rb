class ApplicationController < ActionController::Base


    def current_user_logged
        if !user_signed_in?
            redirect_to root_path
        end
    end
end