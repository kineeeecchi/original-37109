class IngredientsController < ApplicationController
  before_action :authenticate_user!

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(ingredient_params)
    redirect_to new_ingredient_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :protein, :calorie, :category_id)
  end
end

