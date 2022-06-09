class User < ApplicationRecord
  has_many :documents, dependent: :destroy
  has_one_attached :avatar
  validates :first_name, :last_name, :email, :birthday, :cpf, presence: true
  validates :cpf, uniqueness: true
  validate :validate_cpf
  validates :validate_cpf, length: { maximum: 14 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def validate_cpf
    errors.add(:cpf, "Inválido") unless cpf.valid_cpf?
  end
end
