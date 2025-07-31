class Menu < ApplicationRecord
  has_many :meals, dependent: :destroy
end
