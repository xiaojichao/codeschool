class Admin::UsersController < Admin::ApplicationController

  before_filter :authenticate_admin!

  def index
    @users = User.no_admin
  end
end
