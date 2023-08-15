class Tool < ApplicationRecord
  validates :name, uniqueness: true,  presence: true
  has_many :tool_users
  has_many :users, through: :tool_users
end
