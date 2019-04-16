class QuestionsController < ApplicationController

  def new
    @question = Question.last
  end

  def show
    @question = Question.find(params[:id])
  end

  def answer
    @question = Question.find(params[:id])
    if params[:answer] == 'yes'
      @q = Question.find_by(id: @question.choice_1)
      elsif @q.id == 555
      redirect_to "/activities/index"
    elsif @q.id == 666
      redirect_to "/activities/666"
    elsif @q.id == 999

    elsif @q.id == 888
      redirect_to "/activities/index"
    else
      @q = Question.find_by(id: @question.choice_2)
    end
    redirect_to question_path(@q.id)
  end

end
