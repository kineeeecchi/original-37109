class QuizzesController < ApplicationController
  before_action :authenticate_user!

  def index
    @quiz = Quiz.all

    respond_to do |format|
      format.html
      format.json {render json: @quiz }
    end
  end

  def new
    @quiz = Quiz.new
  end

  def create
    Quiz.create(quiz_params)
    redirect_to new_quiz_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:question, :answer_1, :answer_2, :answer_3, :answer_num, :explain)
  end



end
