class Patient < ApplicationRecord
  has_many :tests
  has_many :patient_testurls
  has_many :BloodExaminationReport
  has_many :GravindexTestReport
  has_many :HivTestReport
  has_many :MountexReport
  has_many :StoolExaminationreport
  has_many :UrineExaminationReport
  has_many :VdrlTest
  has_many :WidalReactionReport


   extend FriendlyId
   friendly_id :name, use: :slugged
end
