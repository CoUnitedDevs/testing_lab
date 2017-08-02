class BloodExaminationReportsController < ApplicationController
  before_action :set_blood_examination_report, only: [:show, :edit, :update, :destroy]

  def index
    # @blood_examination_reports = BloodExaminationReport.all
  end

  def new
    @patient = Patient.find(params[:id])
    @blood_examination_reports = BloodExaminationReport.new
  end

  def create
    @blood_examination_report = BloodExaminationReport.new(blood_examination_report_params)

    respond_to do |format|
      if @blood_examination_report.save
        format.html {redirect_to blood_examination_report_path(@blood_examination_report)}
      end
    end
  end

  def show
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def set_blood_examination_report
    @blood_examination_report = BloodExaminationReport.find(params[:id])
  end

  def blood_examination_report_params
      params.require(:blood_examination_report).permit(:hemoglobin, :total_rbc_count, :total_wbc_count, :ae_count, :platelet_count, :neutrophils, :lymphocytes, :eosinophils, :monocytes, :basophils, :esr,:patient_id)
  end
end
