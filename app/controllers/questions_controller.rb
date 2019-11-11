class QuestionsController < ApplicationController
  def ask
    @ask = 'What time is it?'
  end

  def answer
    @question = params[:new_question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
