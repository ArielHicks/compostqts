class User < ApplicationRecord
  has_many :plots
  has_many :gardens, through: :plots
  has_secure_password
end
