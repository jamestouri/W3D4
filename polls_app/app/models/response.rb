class Response < ApplicationRecord 
  validates :user_id, :question_id, :answer_choice_id, presence: true
  validate :not_duplicate_response
    
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
    
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
  has_one :question,
    through: :answer_choice,
    source: :question
    
  def sibling_responses
    
    self.question.responses
    
  end 
    
  def not_duplicate_response
    our_user = self.user_id
    our_question = self.question_id
    
    responses = Response.where(user_id: our_user)
    if responses.exists?(question_id: our_question)
      errors[:duplicate] << 'of answered question'
    end
  end
  
  def question 
    
  
  end 
end 