class AnswersController < ApplicationController

def create
	@question = Question.find(params[:question_id])
	@answer = @question.answers.new(params.require(:answer).permit(:description))
	if @answer.save
		redirect_to question_url(@question)
	else
		redirect_to question_url(@question)
	end
end

def vote
	@question = Question.find(params[:question_id])
	@answer = Answer.find(params[:id])
	@answer.votes += 1
	@answer.save
	redirect_to question_url(@question)
end

end
