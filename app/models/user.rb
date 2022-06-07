class User < ApplicationRecord
  has_many :documents, dependent: :destroy
  has_one_attached :avatar
  validates :first_name, :last_name, :city, :state, :email, :birthday, :cpf, presence: true
  validates :cpf, :email, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
