class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    # @ingredients = @cocktail.ingredients
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def add_doses_to_cocktail

  end

  def delete_doses_from_cocktail

  end

  private
  # To filter hacking forms
  def cocktail_params
    params.require(:cocktail).permit(:name, :address, :rating)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
