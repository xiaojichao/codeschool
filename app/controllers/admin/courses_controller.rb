class Admin::CoursesController < Admin::ApplicationController

  before_filter :authenticate_admin!
end
