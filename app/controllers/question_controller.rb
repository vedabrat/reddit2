class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
  end

  def create
  end
end
