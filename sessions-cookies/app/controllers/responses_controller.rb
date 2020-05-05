class ResponsesController < ApplicationController

    before_action :define_question, :define_response

    def new
      puts "Tracking session info:"
      p @number_correct = session[:num_correct]

      @last_result = flash[:last_result]
    end

    def define_question
        @question = Question.order("RANDOM()").limit(1)[0]
    end

    def define_response
        @questionResponse = Response.new({ question: @question })
    end

    def create
        @number_correct = 0
        session[:num_correct] ||= 0
        response = Response.create(response_params)
        if response.question.correct_answer == response.answer
            session[:num_correct] = session[:num_correct] + 1
            flash[:last_result] = "Correct"
        else
            flash[:last_result] = "Incorrect"
        end
        redirect_to '/random-question'
    end

    def response_params
        params.require(:response).permit(:answer_id, :question_id)
    end

end
