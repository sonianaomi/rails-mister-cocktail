class DosesController < ApplicationController
  before_action :set_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.new(dose_params)
    @dose.save
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:cocktail).permit(:description, :cocktail_id, :ingredient_id)
  end

end
