class Category < ApplicationRecord
  has_and_belongs_to_many :posts

  validates :name, presence: true
  validates :name, uniqueness: true
end
