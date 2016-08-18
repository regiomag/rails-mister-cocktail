class DosesController < ApplicationController
    before_action :set_dose, only: [:show, :edit, :update,:destroy]

  def index
    @doses = Doses.all
  end
  def show
  end
  def new
    @dose = Doses.new
  end
  def create
    Doses.create(dose_params)
    redirect_to doses_path
  end
  def edit
  end
  def update
    Doses.update(dose_params)
    redirect_to dose_path(@dose)        # to redirect to the ID page, dynamic link
  end
  def destroy
    @dose.destroy
    redirect_to doses_path
  end

  private
  # To filter hacking forms
  def dose_params
    params.require(:dose).permit(:name, :address, :rating)
  end
  def set_dose
    @dose = Doses.find(params[:id])
  end

end
