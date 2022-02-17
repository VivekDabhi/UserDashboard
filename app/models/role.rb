class Role < ApplicationRecord
  has_many :users_roles, dependent: :destroy
end