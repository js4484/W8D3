# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  respondent_id    :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord

    validates :respondent_id, :answer_choice_id, presence: true 

    belongs_to :respondent,
        class_name: :User,
        foreign_key: :respondent_id

   belongs_to :answer_choice,
        class_name: :AnswerChoice,
        foreign_key: :answer_choice_id 

    has_one :question
        through: :answer_choice
        source: :question
    
    def sibling_responses
        self.question.responses.where()
    end
end
