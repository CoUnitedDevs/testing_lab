class StoolExaminationreportsController < ApplicationController

    before_action :set_stool_examination_report, only: [:show, :edit, :update, :destroy]

  def index

  end

  def new
    @patient = Patient.find(params[:id])
    @stool_examinationreports = StoolExaminationreport.new
  end

  def create
    @patient = Patient.find(params[:stool_examinationreport][:patient_id])
    @stool_examinationreport = StoolExaminationreport.new(set_stool_examination_report_params)
    respond_to do |format|
      if @stool_examinationreport.save
         format.html {redirect_to stool_examinationreport_path(@stool_examinationreport)}
      end
    end
  end

  def show
    @patient = Patient.where(id: @stool_examinationreport.patient_id).first
  end

  def edit

  end

  def update
    @stool_examinationreport.update(set_stool_examination_report)
  end

   def destroy
   end

   private

    def set_stool_examination_report
      @stool_examinationreport = StoolExaminationreport.find(params[:id])
    end

    def set_patient_id
    end

    def set_stool_examination_report_params
      params.require(:stool_examinationreport).permit(:patient_id, :color, :reaction, :viscosity, :mucous, :blood, :occult_blood, :ova, :cyst)
    end

end
