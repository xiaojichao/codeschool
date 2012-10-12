class Course < ActiveRecord::Base
  col :title, null: false

  attr_accessible :title

  validates :title, presence: true
end
