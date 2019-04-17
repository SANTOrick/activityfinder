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
      redirect_to question_path(@q.id)
    elsif @question.choice_1 == 888 || @question.choice_2 == 888
      redirect_to "/activities/index_museum"
    elsif @q.id == 666
      redirect_to "/activities/index_pub"
    elsif @q.id == 999
      redirect_to "/activities/index_restaurant"
    elsif @q.id == 555
      redirect_to "/activities/index_concert"
    elsif @q.id == 444
      redirect_to "/activities/index_theater"
    else
      @q = Question.find_by(id: @question.choice_2)
      redirect_to question_path(@q.id)

    end
  end

end
