class Patient < ApplicationRecord
  has_many :tests
  has_many :patient_testurls
end
