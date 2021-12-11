class AimsController < ApplicationController
  before_action :authenticate_user!

  def new
    @aim = Aim.new
  end

  def create
    @aim = Aim.new(aim_params)
    if @aim.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @aim = Aim.find(params[:id])
  end

  def update
    @aim = Aim.find(params[:id])
    if @aim.update(aim_params)
    redirect_to root_path(@aim.id)
    else
    render :edit
    end
  end


  private

  def aim_params
    params.require(:aim).permit(:goal, :protein, :calorie).merge(user_id: current_user.id)
  end

end
