class Document < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :category, uniqueness: true
end
