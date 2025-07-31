class Meal < ApplicationRecord
  belongs_to :menu
  has_many :foods, dependent: :destroy
end
