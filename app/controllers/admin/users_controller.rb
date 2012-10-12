class Admin::UsersController < Admin::ApplicationController

  before_filter :authenticate_admin!
end
