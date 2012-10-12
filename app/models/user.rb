class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  col :email, null: false
  col :encrypted_password, default: '', null: false

  # devise
  col :reset_password_token
  col :reset_password_sent_at, as: :datetime
  col :remember_created_at, as: :datetime
  col :sign_in_count,  as: :integer, default: 0
  col :current_sign_in_at, as: :datetime
  col :last_sign_in_at, as: :datetime
  col :current_sign_in_ip
  col :last_sign_in_ip
  col :confirmation_token
  col :authentication_token
  col :confirmed_at, as: :datetime
  col :confirmation_sent_at, as: :datetime
  col :role, default: 'user', null: false

  # actual fields
  col :full_name, :null => false

  timestamps

  scope :no_admin, where(role: 'user')

  attr_accessible :full_name, :email, :password, :password_confirmation, :remember_me
  validates :full_name, presence: true

  def admin?
    role == 'admin'
  end

  def full_name_with_email
    "#{self[:full_name]} (#{email})"
  end
end
