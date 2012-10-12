class Admin::ChallengesController < Admin::ApplicationController

  before_filter :authenticate_admin!

  def new
    @course ||= course
    @challenge = @course.challenges.new
  end

  def create
    @course ||= course
    @challenge = @course.challenges.new(params[:challenge])
    if @challenge.save
      redirect_to admin_course_path(params[:course_id])
    end
  end

  def update
    @course ||= course
    @challenge = @course.challenges.find(params[:id])
    if @challenge.update_attributes!(params[:challenge])
      redirect_to admin_course_path(@course)
    end
  end

  def show
    @course ||= course
    @challenge = @course.challenges.find(params[:id])
  end

  def edit
    @course ||= course
    @challenge = @course.challenges.find(params[:id])
  end

  protected

    def course
      Course.find(params[:course_id])
    end
end
