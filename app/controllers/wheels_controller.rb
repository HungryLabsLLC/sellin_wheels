class WheelsController < ApplicationController

  def new
    @wheel = Wheel.new
  end

  def create
    @wheel = Wheel.new(wheel_params)
    if @wheel.save
      redirect_to new_wheel_path, notice: "THANKS N STUFF"
    else
      render action: 'new'
    end
  end

  def show
    @wheel = Wheel.find(params[:id])
  end

  def index
  end

  private

  def wheel_params
    params.require(:wheel).permit(:instagram_username, :make, :model, :diameter, :front_width_offset, :rear_width_offset, :pcd_lug_pattern, :price, :notes, :image)
  end

end