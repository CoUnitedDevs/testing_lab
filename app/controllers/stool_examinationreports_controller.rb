class StoolExaminationreportsController < ApplicationController

  def index
  end

  def new
    @patient = Patient.find(params[:id])
    @stool_examinationreports = StoolExaminationreport.new
  end

  def create
    @stool_examinationreports = StoolExaminationreport.new(stoll_examinationreports_params)
  end

  def edit

  end

  def update

  end

   def destroy
   end

end
