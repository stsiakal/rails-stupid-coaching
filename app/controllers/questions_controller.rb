# frozen_string_literal: true

QUESTION_FOR_WORK = 'I am going to work'
ANSWER_FOR_WORK = 'Great'
ANSWER_FOR_QUESTION = 'Silly question, get dressed and go to work!'
ANSWER_FOR_EVERYTHING_ELSE = 'I dont care, get dressed and go to work!'

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(question)
    if it_a_question?(question)
      ANSWER_FOR_QUESTION
    elsif question == QUESTION_FOR_WORK
      ANSWER_FOR_WORK
    else
      ANSWER_FOR_EVERYTHING_ELSE
    end
  end

  def it_a_question?(question)
    if question.nil?
      false
    else
      question.end_with?('?')
    end
  end
end
