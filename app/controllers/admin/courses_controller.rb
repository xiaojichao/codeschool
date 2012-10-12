class Admin::CoursesController < Admin::ApplicationController

  before_filter :authenticate_admin!

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to admin_courses_path
    end
  end

  def show
    @course ||= course
    @challenges = @course.challenges
  end

  def destroy
    @course ||= course
    if @course.destroy
      redirect_to admin_courses_path
    end
  end

  protected

  def course
    Course.find(params[:id])
  end
end
