class ManagementsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if user_signed_in?
    @protein = Management.where(user_id: current_user.id).where("created_at >= ?", Date.today).all.sum(:protein)
    @calorie = Management.where(user_id: current_user.id).where("created_at >= ?", Date.today).all.sum(:calorie)
    @aim = Aim.find_by(user_id: current_user.id)
    @management = Management.all
    @posts = Post.all.order("created_at DESC")
      
    end
  end

  def new
    @management = Management.new

    @ingredients = Ingredient.all
    @meats = Ingredient.where(category_id: 2)
    @processed_meats = Ingredient.where(category_id: 3)
    @fishes = Ingredient.where(category_id: 4)
    @seaweeds = Ingredient.where(category_id: 5)
    @processed_fishes = Ingredient.where(category_id: 6)
    @eggs = Ingredient.where(category_id: 7)
    @potatoes = Ingredient.where(category_id: 8)
    @dairy_products = Ingredient.where(category_id: 9)
    @soy_products = Ingredient.where(category_id: 10)
    @mushrooms = Ingredient.where(category_id: 11)
    @beans = Ingredient.where(category_id: 12)
    @fruits = Ingredient.where(category_id: 13)
    @vegetables = Ingredient.where(category_id: 14)
    @staples = Ingredient.where(category_id: 15)
    @sides = Ingredient.where(category_id: 16)
    @snacks = Ingredient.where(category_id: 17)
    @drinks = Ingredient.where(category_id: 18)
    @enriched_foods = Ingredient.where(category_id: 19)
    @others = Ingredient.where(category_id: 20)
  end

  def create
    @management = Management.new(management_params)
    if @management.save
      redirect_to root_path
    else
      render :new
    end

  end

  def show
    @managements = Management.where(user_id: current_user.id).where("created_at >= ?", Date.today)
  end

  def destroy
    management = Management.find(params[:id])
    management.destroy
    redirect_to management_path(management.id)
  end

  private

  def management_params
    params.require(:management).permit(:name, :protein, :calorie).merge(user_id: current_user.id)
  end

end
