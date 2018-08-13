class QuestionController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include?('?')
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I am going to work right now!".upcase
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation!" + " " + coach_answer(your_message)
    else
      return coach_answer(your_message)
    end
  end
end
