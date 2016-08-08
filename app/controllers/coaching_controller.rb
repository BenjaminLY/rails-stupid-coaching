class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
    # raise
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.end_with? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.downcase.eql? "I am going to work right now!".downcase
      return ""
    elsif your_message != your_message.downcase
      return "I can feel your motivation! #{coach_answer(your_message)}"
    else
      return coach_answer(your_message)
    end
  end

end
