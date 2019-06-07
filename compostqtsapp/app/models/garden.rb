class Garden < ApplicationRecord
  has_many :plots
  has_many :users, through: :plots
end
