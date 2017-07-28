class PatientsController < ApplicationController
  before_action :set_patient_id , only: [:show, :edit, :update, :destroy]

  def index
    @patient_testurls = PatientTesturl.where.not(status: 'printed')
    # @patient = Patient.all
    # @patient_urls = PATIENT_URL
    @tests = Test.all
  end

  def new
    @patient = Patient.new
    @patient_tests = PATIENT_TEST
  end

  def create
    @patient = Patient.create_with(patient_params).find_or_create_by(patient_index: params[:patient][:patient_index])
    # @patient.patient_testurls << params[:patient][:test_urls]
    respond_to do |format|
      if @patient.save
        params[:patient][:test_urls].each do |p|
          PatientTesturl.create(patient_id: @patient.id,test_id:8, test_url: p)
        end
        format.html { redirect_to patients_path}
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_path(@patient)}
      end
    end
  end

  private

  def set_patient_id
    @patient = Patient.find_by(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :gender, :age, :present_date, :referred_by, :mobile_no, :patient_test)
  end

end
