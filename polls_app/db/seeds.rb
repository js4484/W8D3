# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

jake = User.create!(username: "jake")
ryan = User.create!(username: "ryan")
paul = User.create!(username: "paul")
mark = User.create!(username: "mark")
luke = User.create!(username: "luke")
jesus = User.create!(username: "jesus")
mashu = User.create!(username: "mashu")

Poll.destroy_all

poll1 = Poll.create!(title: 'questions on coding', user_id: jake.id)

poll2 = Poll.create!(title: 'people in coding', user_id: ryan.id)

poll3 = Poll.create!(title: 'sci-fi mysteries', user_id: paul.id)

poll4 = Poll.create!(title: 'gossip''s gossip', user_id: mark.id)

poll5 = Poll.create!(title: 'defunct tv taglines', user_id: jesus.id)

Question.destroy_all

q1 = Question.create!(text: 'do you like ruby?', poll_id: poll1.id)
q2 = Question.create!(text: 'where is soon-mi?!?!', poll_id: poll2.id)
q3 = Question.create!(text: 'do androids dream of electric sheep?', poll_id: poll3.id )
q4 = Question.create!(text: 'do mashu piccu? (he do.)', poll_id: poll4.id)
q5 = Question.create!(text: 'who wants to be a millionaire?', poll_id: poll5.id)

AnswerChoice.destroy_all

yes = AnswerChoice.create!(answer_text: "yes", question_id: q1.id)
yes2 = AnswerChoice.create!(answer_text: "yes", question_id: q2.id)
yes3 = AnswerChoice.create!(answer_text: "yes", question_id: q3.id)
yes4 = AnswerChoice.create!(answer_text: "yes", question_id: q4.id)
yes5 = AnswerChoice.create!(answer_text: "no", question_id: q5.id)

Response.destroy_all

response1 = Response.create!(respondent_id: jake.id, answer_choice_id: yes3.id)
response2 = Response.create!(respondent_id: paul.id, answer_choice_id: yes5.id)
response3 = Response.create!(respondent_id: mashu.id, answer_choice_id: yes.id)