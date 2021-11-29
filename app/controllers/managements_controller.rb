class ManagementsController < ApplicationController

  def index
    if user_signed_in?
    @protein = Management.where(user_id: current_user.id).where("created_at >= ?", Date.today).all.sum(:protein)
    @calorie = Management.where(user_id: current_user.id).where("created_at >= ?", Date.today).all.sum(:calorie)

    @posts = Post.all.order("created_at DESC")
    
    else
      
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
