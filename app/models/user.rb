class User < ApplicationRecord
  has_many :documents, dependent: :destroy
  has_one_attached :avatar
  validates :first_name, :last_name, :email, :birthday, :cpf, :genre, presence: true
  validates :cpf, uniqueness: true
  validates :genre, inclusion: { in: ['Masculino', 'Feminino'] }
  validate :validate_cpf
  validates :validate_cpf, length: { maximum: 14 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def validate_cpf
    errors.add(:cpf, "Inválido") unless cpf.valid_cpf?
  end
end
