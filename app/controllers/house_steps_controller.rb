class HouseStepsController < ApplicationController
    include Wicked::Wizard
    
    before_action :set_house, only: [:show, :update]

    steps :room_elements

    def show
        p @house
        case step
        when :room_elements
            @rooms = @house.rooms
            @users = @house.users
        end
        render_wizard    
    end

    def update
        render_wizard @house
    end

    def finish_wizard_path
        houses_path
    end
    private
    
    def set_house
        @house = House.find(params[:house_id])
    end
end
