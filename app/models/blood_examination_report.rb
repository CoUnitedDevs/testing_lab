class BloodExaminationReport < ApplicationRecord
  belongs_to :patient
  has_many :tests, as: :testable

  after_save :set_test
  after_save :set_patient_test

  def set_test
    @test = tests.new(patient_id: self.patient_id)
    @test.save
  end

  def set_patient_test
    @patient = self.patient
    @patient_test = @patient = self.patient.patient_testurl.where(test_id: nil,test_url: 'C.B.P REPORT').update(test_id: self.id,status: 'active')
  end

end
