class ChartsController < ApplicationController
	before_action :set_house, only: [:house]
  def house
  	#render json: House.group_by_day(:created_at).count
  	time_range = Time.now-1.month..Time.now
  	render json: @house.rooms.joins(:sensors => [:values]).group('sensors.name').where(sensors:{sensor_category_id: 1}).where(values: {created_at: time_range}).sum(:value)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:house_id])
    end
end
