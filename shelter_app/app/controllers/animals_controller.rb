class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[ show edit update destroy ]
  before_action :set_personalities, :set_conditions, :set_sexes, only: %i[new edit]
  before_action :set_conditions, :set_personalities, :set_sexes
  before_action :set_shelter, only: %i[ index new create delete]
  # GET /animals or /animals.json
  def index
    @animals = Animal.all
    @animal = @shelter.animals.build

  end

  # GET /animals/1 or /animals/1.json
  def show
  end

  # GET /animals/new
  def new
    @animal = @shelter.animals.build
  end

  # GET /animals/1/edit
  def edit
  end

  # POST /animals or /animals.json
  def create
    @animal = @shelter.animals.build(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to [@shelter, @animal], notice: "Animal was successfully created." }
        format.json { render :show, status: :created, location: [@shelter, @animal] }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/1 or /animals/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: "Animal was successfully updated." }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1 or /animals/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: "Animal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    def set_personalities
      @personalities = Animal.personalities.map { |k,v| [k,k] }
    end

    def set_conditions
      @conditions = Animal.conditions.map { |k,v| [k,k] }
    end

    def set_sexes
      @sexes = Animal.sexes.map { |k,v| [k,k] }
    end

    def set_shelter
      @shelter = Shelter.find(params[:shelter_id])
    end  

    # Only allow a list of trusted parameters through.
    def animal_params
      params.require(:animal).permit(:name, :entry_at, :condition, :personality, :age, :sex, :color, :chip, :hosted_in, :observations, :shelter_id, :rescued_from_id, :adopter_id)
    end
end
