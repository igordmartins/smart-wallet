class User < ApplicationRecord
  has_many :documents, dependent: :destroy
  has_one_attached :avatar
  validates :first_name, :last_name, :city, :state, :email, :birthday, :cpf, presence: true
  validates :cpf, :email, uniqueness: true
  validate :validate_cpf
  validates :validate_cpf, length: { is: 15 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def validate_cpf
    if !cpf.valid_cpf?
      errors.add(:cpf, "Invalido")
    end
  end
end
