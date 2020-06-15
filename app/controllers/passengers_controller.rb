class PassengersController < ApplicationController
  

  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)
    @passenger.save
    redirect_to edit_passenger_path(@passenger)
  end

  def show
    @passenger = Passenger.find(params[:id])
  end

  def edit
    @passenger = Passenger.find(params[:id])
  end

  def update
    @passenger = Passenger.find(params[:id])
    @passenger.update(passenger_params)

    redirect_to passenger_path(@passenger)
  end

  def destroy
    @passenger = Passenger.find(params[:id])
    @student.destroy
    # redirect_to new_passenger_path(@passenger)
  end

  private 

  def passenger_params
    params.require(:passenger).permit(:name, :phone_number, :email, :password)
  end
end
