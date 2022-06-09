class Document < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :category, uniqueness: true
  validates :category, inclusion: { in: ['CPF', 'Identidade', 'Habilitação', 'Documento do Veículo',
                                         'Carteira de Vacinação', 'Passaporte', 'Outros'] }
  has_many_attached :photos
end
