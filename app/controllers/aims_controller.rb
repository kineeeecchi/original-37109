class AimsController < ApplicationController
  before_action :authenticate_user!

  def new
    @aim = Aim.new
  end

  def create
    Aim.create(aim_params)
    redirect_to root_path
  end

  def edit
    @aim = Aim.find(params[:id])
  end

  def update
    aim = Aim.find(params[:id])
    aim.update(aim_params)
    redirect_to root_path
  end


  private

  def aim_params
    params.require(:aim).permit(:goal, :protein, :calorie).merge(user_id: current_user.id)
  end

end
