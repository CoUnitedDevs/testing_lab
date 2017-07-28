class Test < ApplicationRecord
  belongs_to :testable, polymorphic: true
  # belongs_to :stool_examinationreports
  belongs_to :patient
  has_many :patient_testurls
end
