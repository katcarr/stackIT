class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def show

  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question Successfully Asked!"
    else
      flash[:alert] = "There was a problem submitting your question"
    end
    redirect_to :back
  end

  private
  def question_params
    params.require(:question).permit(:ask)
  end

end
