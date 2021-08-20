class LocationsController < ApplicationController

  before_action :editor_user, only: %i[ update destroy create ]

  def index
  end

  def new
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  
  def editor_user
    redirect_to homes_path unless current_user.editor?
  end

end
