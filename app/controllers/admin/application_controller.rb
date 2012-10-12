class Admin::ApplicationController < ApplicationController

  protected
    
    def authenticate_admin!
      current_user.try(:admin?)
    end
end
