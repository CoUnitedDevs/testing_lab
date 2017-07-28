class PatientTesturl < ApplicationRecord
  belongs_to :patient
  has_many :tests, as: :testable

end
