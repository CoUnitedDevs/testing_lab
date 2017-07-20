class UrineExaminationReport < ApplicationRecord
  has_many :tests, as: :testable
  after_save :set_test

  def set_test
    @test = tests.new(patient_id: self.patient_id)
    @test.save
  end
end
