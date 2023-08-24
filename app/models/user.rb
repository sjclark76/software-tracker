class User < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,  presence: true

  has_many :tool_users
  has_many :tools, through: :tool_users

  def full_name
    "#{first_name} #{last_name}"
  end
end
