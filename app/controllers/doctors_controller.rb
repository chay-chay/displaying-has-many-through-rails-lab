class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private
  def doctor_params
    params.require(:doctor).pemit(:name, :department)
  end
  
end

# or can write like this
# before_action :set_doctor, only: [:show]

# def index
#   @doctors = Doctor.all
# end

# def show
# end

# private
# def set_doctor
#   @doctor = Doctor.find(params[:id])
# end
# def doctor_params
#   params.require(:doctor).permit(:name, :department)
# end