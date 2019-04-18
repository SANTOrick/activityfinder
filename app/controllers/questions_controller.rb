class QuestionsController < ApplicationController

  def new
    @question = Question.last
  end

  def show
    @question = Question.find(params[:id])
  end

  def answer
    @question = Question.find(params[:id])
    @activity = Activity.new
    if params[:answer] == 'yes'
      @q = Question.find_by(id: @question.choice_1)
      redirect_to question_path(@q.id)
    elsif @question.choice_1 == 888 || @question.choice_2 == 888
      @activity.category = "Museum"
      @new = @activity.spec_random
      redirect_to activity_path(@new)
    elsif @question.choice_1 == 666 || @question.choice_2 == 666
      @activity.category = "Pub"
      @new = @activity.spec_random
      redirect_to activity_path(@new)
    elsif @question.choice_1 == 999 || @question.choice_2 == 999
      @activity.category = "Restaurant"
      @new = @activity.spec_random
      redirect_to activity_path(@new)
    elsif @question.choice_1 == 555 || @question.choice_2 == 555
      @activity.category = "Concert"
      @new = @activity.spec_random
      redirect_to activity_path(@new)
    elsif @question.choice_1 == 444 || @question.choice_2 == 444
      @activity.category = "Theatre"
      @new = @activity.spec_random
      redirect_to activity_path(@new)
    else
      @q = Question.find_by(id: @question.choice_2)
      redirect_to question_path(@q.id)

    end
  end

end
