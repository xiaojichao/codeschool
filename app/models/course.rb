class Course < ActiveRecord::Base
  col :title, null: false
  timestamps

  attr_accessible :title

  validates :title, presence: true

  has_many :challenges, dependent: :destroy
end
