class CocktailsController < ApplicationController
before_action :fetch_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all

  end

  def show

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save!
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
  def fetch_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
