# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'James')
User.create(username: 'EJ')
User.create(username: 'YoYoMa')

Poll.create(author_id: 1, title: 'best_food')
Poll.create(author_id: 2, title: 'best movie')
Poll.create(author_id: 3, title: 'coolest car')

Question.create(text: 'best type of pizza', poll_id: 1)


Question.create(text: 'best type of action movie', poll_id: 2)
Question.create(text: 'best soundtrack', poll_id: 2)

Question.create(text: 'james car?', poll_id: 3)
Question.create(text: 'not EJs?', poll_id: 3)
Question.create(text: 'james right?', poll_id: 3)


AnswerChoice.create(question_id: 1, text: 'cheese')
AnswerChoice.create(question_id: 1, text: 'peppe sausage')

AnswerChoice.create(question_id: 2, text: 'Predator')
AnswerChoice.create(question_id: 2, text: 'Star Wars')



AnswerChoice.create(question_id: 3, text: 'Despicable Me 3')
AnswerChoice.create(question_id: 3, text: 'Lord of the Rings')
AnswerChoice.create(question_id: 3, text: 'The Greatest Showman')
AnswerChoice.create(question_id: 3, text: 'Blues Brothers')

AnswerChoice.create(question_id: 4, text: 'Yes')
AnswerChoice.create(question_id: 4, text: 'No')

AnswerChoice.create(question_id: 5, text: 'Yes')
AnswerChoice.create(question_id: 5, text: 'Star Wars')

AnswerChoice.create(question_id: 6, text: 'Yes')
AnswerChoice.create(question_id: 6, text: 'No')


Response.create(user_id: 1, question_id: 1, answer_choice_id: 2)
Response.create(user_id: 2, question_id: 1, answer_choice_id: 1)
Response.create(user_id: 3, question_id: 1, answer_choice_id: 2)

Response.create(user_id: 1, question_id: 2, answer_choice_id: 2)
Response.create(user_id: 2, question_id: 2, answer_choice_id: 2)

Response.create(user_id: 1, question_id: 3, answer_choice_id: 1)
Response.create(user_id: 2, question_id: 3, answer_choice_id: 2)
Response.create(user_id: 2, question_id: 3, answer_choice_id: 1)

Response.create(user_id: 1, question_id: 4, answer_choice_id: 1)
Response.create(user_id: 2, question_id: 4, answer_choice_id: 2)

Response.create(user_id: 1, question_id: 5, answer_choice_id: 1)
Response.create(user_id: 2, question_id: 5, answer_choice_id: 2)

Response.create(user_id: 1, question_id: 6, answer_choice_id: 2)
Response.create(user_id: 2, question_id: 6, answer_choice_id: 1)




