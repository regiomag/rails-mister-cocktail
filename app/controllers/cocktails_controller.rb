class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    # @ingredients = @cocktail.ingredients
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def add_doses_to_cocktail

  end

  def delete_doses_from_cocktail

  end

  private
  # To filter hacking forms
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
