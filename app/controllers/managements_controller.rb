class ManagementsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if user_signed_in?
    @protein = Management.where(user_id: current_user.id).where("created_at >= ?", Date.today).all.sum(:protein)
    @calorie = Management.where(user_id: current_user.id).where("created_at >= ?", Date.today).all.sum(:calorie)
    @aim = Aim.find_by(user_id: current_user.id)
    # @aim = Aim.where(user_id: current_user.id).order("created_at DESC").limit(1)
    @posts = Post.all.order("created_at DESC")
      
    end
  end

  def new
    @management = Management.new
  end

  def create
    Management.create(management_params)
    redirect_to root_path
  end

  private

  def management_params
    params.require(:management).permit(:name, :protein, :calorie).merge(user_id: current_user.id)
  end

end
