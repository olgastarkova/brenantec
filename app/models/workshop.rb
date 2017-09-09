class Workshop < ApplicationRecord
  belongs_to :coach
  has_many :programsteps
  TYPES = ['Cours', 'Atelier', 'Stage en résidence']
  validates :format, inclusion: {in: TYPES}
  has_attachments :photos, maximum: 5
end
