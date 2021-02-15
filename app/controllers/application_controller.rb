class ApplicationController < ActionController::Base
    
    def is_admin?
        if not current_user
           flash.alert = "Sorry, you must be logged in."
           redirect_to root_path
        else
            unless current_user.admin
               flash.alert = "Sorry, you don't have permissions to perform this action."
               redirect_to root_path
            end
        end
    end
end
