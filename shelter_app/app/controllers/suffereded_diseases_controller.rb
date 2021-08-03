class SufferededDiseasesController < ApplicationController
  before_action :set_suffereded_disease, only: %i[ show edit update destroy ]

  # GET /suffereded_diseases or /suffereded_diseases.json
  def index
    @suffereded_diseases = SufferededDisease.all
  end

  # GET /suffereded_diseases/1 or /suffereded_diseases/1.json
  def show
  end

  # GET /suffereded_diseases/new
  def new
    @suffereded_disease = SufferededDisease.new
  end

  # GET /suffereded_diseases/1/edit
  def edit
  end

  # POST /suffereded_diseases or /suffereded_diseases.json
  def create
    @suffereded_disease = SufferededDisease.new(suffereded_disease_params)

    respond_to do |format|
      if @suffereded_disease.save
        format.html { redirect_to @suffereded_disease, notice: "Suffereded disease was successfully created." }
        format.json { render :show, status: :created, location: @suffereded_disease }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @suffereded_disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suffereded_diseases/1 or /suffereded_diseases/1.json
  def update
    respond_to do |format|
      if @suffereded_disease.update(suffereded_disease_params)
        format.html { redirect_to @suffereded_disease, notice: "Suffereded disease was successfully updated." }
        format.json { render :show, status: :ok, location: @suffereded_disease }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @suffereded_disease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suffereded_diseases/1 or /suffereded_diseases/1.json
  def destroy
    @suffereded_disease.destroy
    respond_to do |format|
      format.html { redirect_to suffereded_diseases_url, notice: "Suffereded disease was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suffereded_disease
      @suffereded_disease = SufferededDisease.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suffereded_disease_params
      params.require(:suffereded_disease).permit(:started_at, :discharged, :disease_id, :medical_history_id, :veterinary_id)
    end
end
