class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # @doses = @cocktail.doses
    @ingredients = @cocktail.ingredients
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
    # @cocktails = cocktail.create(cocktail_params)
    # redirect_to cocktail_path
  end

 private

  def cocktail_params
    params.require(:cocktail).permit(:name) #, :address, :category, :phone_number)
  end


  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/:id', to: 'cocktails#show'
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'
# get '/cocktails/:id/edit', to: 'cocktails#edit'
# patch '/cocktails/:id', to: 'cocktails#update'
# delete '/cocktails/:id', to: 'cocktails#destroy'

end
