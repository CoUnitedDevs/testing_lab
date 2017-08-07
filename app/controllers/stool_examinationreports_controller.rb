class StoolExaminationreportsController < ApplicationController

    before_action :set_stool_examination_report, only: [:show, :edit, :update, :destroy, :stool_exam_pdf]

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
    @patient = @stool_examinationreport.patient
  end

  def edit

  end

  def update
    @stool_examinationreport.update(set_stool_examination_report)
  end

   def destroy
   end

   def stool_exam_pdf
     @patient = @stool_examinationreport.patient
     respond_to do |format|
       format.html do
          format.pdf do
            render pdf: "stool_exam",
            layout: 'application.pdf.erb'
          end
        end
      end
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
