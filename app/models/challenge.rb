class Challenge < ActiveRecord::Base
  col :title
  col :task, as: :text
  col :additional_information, as: :text
  col :console, as: :text
  col :verification_code, as: :text

  col :course_id, as: :integer
  timestamps

  attr_accessible :title,
    :task,
    :additional_information,
    :verification_code

  validates :title, :task, :additional_information, :console, :verification_code, :course_id,
    presence: true

  belongs_to :course
  has_many :answers

  delegate :title, to: :course, prefix: true
end
