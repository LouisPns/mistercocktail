class Ingredient < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  # has_many :cocktails, through: :doses, dependent: :destroy
  validates :doses, presence: :true
  validates :name, uniqueness: :true
end
