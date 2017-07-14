class Patient < ApplicationRecord
  has_many :examination_reports
  has_many :widal_reaction_reports
end
