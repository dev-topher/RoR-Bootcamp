class ApplicationController < ActionController::Base
    def current_user_logged
        if !user_signed_in?
            redirect_to root_path
        end
    end

    def current_user_admin
        if !current_user.admin?
            redirect_to root_path
        end
    end

    def current_user_admin_apply
        if current_user.admin?
            redirect_to root_path
        end
    end
end
