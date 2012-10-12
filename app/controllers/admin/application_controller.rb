class Admin::ApplicationController < ApplicationController

  protected
    
    def authenticate_admin!
      unless current_user.try(:admin?)
        redirect_to root_path
      end
    end
end
