class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @cocktail.update(cocktail_params)
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @cocktail.destroy
    respond_to do |format|
      format.html { redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.' }
    end
  end

  private

    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
      params.require(:cocktail).permit(:name)
    end

end
