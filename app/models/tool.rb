class Tool < ApplicationRecord
  validates :name, uniqueness: true,  presence: true
end
