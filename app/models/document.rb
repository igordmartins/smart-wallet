class Document < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :category, uniqueness: true
  has_one_attached :photo
end
