class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
    # @doses = dose.create(dose_params)
    # redirect_to dose_path
  end


  def destroy
    @dose.destroy
    redirect_to doses_path
  end


 private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

    # resources :doses, only: %i[new index create delete]

end
