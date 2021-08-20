class VolunteeringsController < ApplicationController

    before_action :editor_user, only: %i[ update destroy create ]






    private
  
  def editor_user
    redirect_to homes_path unless current_user.editor?
  end
end
