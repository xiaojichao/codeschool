class AnswersController < ApplicationController
  expose(:challenge)
  expose(:answers) { challenge.answers }

  def create
  end
end
