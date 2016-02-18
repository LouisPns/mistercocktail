class Ingredient < ActiveRecord::Base
  has_many :doses
  # has_many :cocktails, through: :doses, dependent: :destroy
  # validates :doses, presence: :true
  validates :name, uniqueness: :true, presence: true
end
