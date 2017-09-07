class Session < ApplicationRecord
  belongs_to :workshop
  belongs_to :coach, :through => :workshop

end
