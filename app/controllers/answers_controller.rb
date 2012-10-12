class AnswersController < ApplicationController
  expose(:challenge)
  expose(:answers) { challenge.answers }
  expose(:answer)

  respond_to :html, only: :create

  def create
    answer.user = current_user

    if answer.save
      flash[:notice] = 'Challenge accepted!'
    else
      flash[:error] = answer.errors.full_messages.join(', ')
    end

    redirect_to :back
  end
end
