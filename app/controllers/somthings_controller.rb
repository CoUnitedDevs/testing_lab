class SomthingsController < ApplicationController
  before_action :set_somthing, only: [:show, :edit, :update, :destroy]

  # GET /somthings
  # GET /somthings.json
  def index
    @somthings = Somthing.all
  end

  # GET /somthings/1
  # GET /somthings/1.json
  def show
  end

  # GET /somthings/new
  def new
    @somthing = Somthing.new
  end

  # GET /somthings/1/edit
  def edit
  end

  # POST /somthings
  # POST /somthings.json
  def create
    @somthing = Somthing.new(somthing_params)

    respond_to do |format|
      if @somthing.save
        format.html { redirect_to @somthing, notice: 'Somthing was successfully created.' }
        format.json { render :show, status: :created, location: @somthing }
      else
        format.html { render :new }
        format.json { render json: @somthing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /somthings/1
  # PATCH/PUT /somthings/1.json
  def update
    respond_to do |format|
      if @somthing.update(somthing_params)
        format.html { redirect_to @somthing, notice: 'Somthing was successfully updated.' }
        format.json { render :show, status: :ok, location: @somthing }
      else
        format.html { render :edit }
        format.json { render json: @somthing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /somthings/1
  # DELETE /somthings/1.json
  def destroy
    @somthing.destroy
    respond_to do |format|
      format.html { redirect_to somthings_url, notice: 'Somthing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_somthing
      @somthing = Somthing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def somthing_params
      params.require(:somthing).permit(:so, :arun)
    end
end
