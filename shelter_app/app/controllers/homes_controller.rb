class HomesController < ApplicationController

    def index
        @shelters = Shelter.all
        @shelter = Shelter.new
    end    
end
