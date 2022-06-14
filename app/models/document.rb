class Document < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :category, uniqueness: { scope: :user }
  validates :category, inclusion: { in: ['Identidade', 'Habilitação', 'Documento do Veículo',
                                         'Carteira de Vacinação', 'Passaporte', 'Título de Eleitor', 'Outros'] }
  has_one_attached :front
  has_one_attached :back

  def renew_in_days
    (renew_date - Date.current).to_i
  end
end
