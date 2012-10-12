class Answer < ActiveRecord::Base
  col :cmd

  belongs_to :user
  belongs_to :challenge

  attr_accessible :cmd

  validates :user_id, :challenge_id, presence: true
end
