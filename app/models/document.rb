class Document < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :category, uniqueness: true
  validates :category, inclusion: { in: ['CPF', 'Identidade', 'Habilitação', 'Documento do Veículo',
                                         'Carteira de Vacinação', 'Passaporte', 'Outros'] }
  has_one_attached :front
  has_one_attached :back
end
