class Workshop < ApplicationRecord
  belongs_to :coach
  TYPES = ['Cours', 'Atelier', 'Stage en résidence']
  validates :format, inclusion: {in: TYPES}
end
