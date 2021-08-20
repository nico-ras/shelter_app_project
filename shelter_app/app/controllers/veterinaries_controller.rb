class VeterinariesController < ApplicationController

    before_action :set_shelter, only: %i[ index ]

    before_action :editor_user, only: %i[ update destroy create ]

  def index

    @veterinaries = @shelter.veterinaries.all

  end
  
  def show

  end
  
  def new

  end
  
  def edit

  end
  
  def create

  end
  
  def update

  end
  
  def destroy

  end  




    private

  def set_shelter
    @shelter = Shelter.find(params[:shelter_id])
  end  
  
  def editor_user
    redirect_to homes_path unless current_user.editor?
  end
end
