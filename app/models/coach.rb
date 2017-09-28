class Coach < ApplicationRecord
	has_many :workshops
	has_many :sessions, through: :workshops
	has_attachment :photo
end
