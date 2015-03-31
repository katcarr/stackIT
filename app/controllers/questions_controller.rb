class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
    @user = current_user
  end

  def show
    @question = Question.find(params[:id])
    @response = Response.new
    response do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      flash[:notice] = "Question Successfully Asked!"
    else
      flash[:alert] = "There was a problem submitting your question"
    end
    response do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  private
  def question_params
    params.require(:question).permit(:ask)
  end

end
