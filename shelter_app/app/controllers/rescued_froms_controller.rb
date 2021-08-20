class RescuedFromsController < ApplicationController
  before_action :editor_user, only: %i[ update destroy create ]

  def index

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




   
  def controller
  end


  private
  
  def editor_user
    redirect_to homes_path unless current_user.editor?
  end
end
