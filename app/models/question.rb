class Question < ActiveRecord::Base
	has_many :answers

	def top_answer 
		top_answer = self.answers.by_votes.first
		if top_answer.present?
			top_answer.description
		else
			"Be the first to answer this question!"
		end
	end
end
