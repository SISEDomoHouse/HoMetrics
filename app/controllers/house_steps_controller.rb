class HouseStepsController < ApplicationController
    include Wicked::Wizard

    steps :room_elements

    def show
        render_wizard    
    end

    def update
        render_wizard @house
    end

    def finish_wizard_path
        houses_path
    end
end
