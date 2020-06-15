class RidesController < ApplicationController
  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.save

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def ride_params
    params.require(:ride).permit(:location, :destination)
  end
end
