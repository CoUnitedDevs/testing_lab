class Test < ApplicationRecord
  belongs_to :testable, polymorphic: true
  # belongs_to :stool_examinationreports
  belongs_to :patient
end
