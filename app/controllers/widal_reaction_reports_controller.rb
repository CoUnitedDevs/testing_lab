class WidalReactionReportsController < ApplicationController
def index
    # @blood_examination_reports = BloodExaminationReport.all
  end

  def new
    @patient = Patient.find(params[:id])
    @widal_reaction_report = WidalReactionReport.new
  end

  def create
  	@widal_reaction_report = WidalReactionReport.new(widal_reaction_report_params)
    respond_to do |format|
      if @widal_reaction_report.save
        format.html { redirect_to  widal_reaction_report_path(@widal_reaction_report), notice: ' successfully created.' }
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
  def set_widal_reaction_report
    @widal_reaction_report = params[:id]
  end

  private
    def widal_reaction_report_params
        params.require(:widal_reaction_report).permit(:salmonella_typhi_o, :salmonella_typhi_h, :salmonella_para_typhi_ah, :salmonella_para_typhi_bh, :smear_for_mp, :patient_id)
    end
end
