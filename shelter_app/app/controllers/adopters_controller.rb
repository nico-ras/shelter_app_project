class AdoptersController < ApplicationController

    before_action :set_adopter, only: %i[ show edit update destroy ]
    
    before_action :set_animal, only: %i[ new create ]

    before_action :editor_user, only: %i[ update destroy create ]

    def index
        @adopters = Adopter.all
    end

    def show
    end    
    
    def new
        @adopter = Adopter.new
    end

    def edit
    end   
    
    def create
        @adopter = @animal.build_adopter(adopter_params)

       @animal.update(adopter_id: @adopter_id) 
    
        respond_to do |format|
          if @adopter.save
            format.html { redirect_to [@adopter], notice: "Animal was successfully created." }
            format.json { render :show, status: :created, location: [adopter] }
            format.js
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @adopter.errors, status: :unprocessable_entity }
          end
        end
      end

      def update
        respond_to do |format|
          if @adopter.update(adopter_params)
            format.html { redirect_to @adopter, notice: "Adopter was successfully updated." }
            format.json { render :show, status: :ok, location: @adopter }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @adopter.errors, status: :unprocessable_entity }
          end
        end
      end
    
      
      def destroy
        @adopter.destroy
        respond_to do |format|
          format.html { redirect_to adopter_url, notice: "Adopter was successfully destroyed." }
          format.json { head :no_content }
        end
      end

      private

      def editor_user
        redirect_to homes_path unless current_user.editor?
      end

      def set_adopter
        @adopter = Adopter.find(params[:id])
      end

      

      def set_animal 
        @animal = Animal.find(params[:animal_id])
      end

      def adopter_params
        params.require(:adopter).permit(:name, :dni, :address, :phone, :social_net, :observations)
      end
    
    


end
