# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: 'user@1.com', password: '1234567890', usertype: 1, education_name: 'User1', education_number: 1)
user2 = User.create(email: 'user@2.com', password: '1234567890', usertype: 2, education_name: 'User2', education_number: 2)
user3 = User.create(email: 'user@3.com', password: '1234567890', usertype: 3, education_name: 'User3', education_number: 3)

competency1 = Competency.create(name: 'Design & Experience', description: 'Design en Experience competentie', active: true)
competency2 = Competency.create(name: 'Implementation & Integration', description: 'Implementation & Integration competentie', active: true)
competency3 = Competency.create(name: 'Research & Innovation', description: 'Research & Innovation competentie', active: true)
competency4 = Competency.create(name: 'Projectmanagement & Leadership', description: 'Projectmanagement & Leadership competentie', active: true)
competency5 = Competency.create(name: 'Communication & Sharing', description: 'Communication & Sharing competentie', active: true)
competency6 = Competency.create(name: 'Growth & Reflection', description: 'Growth & Reflection competentie', active: true)

learning_objective1 = LearningObjective.create(name: 'Leerdoel 1 bij Design & Experience', user_id: 1, competency_id: 1)
learning_objective2 = LearningObjective.create(name: 'Leerdoel 2 bij Design & Experience', user_id: 1, competency_id: 1)
learning_objective3 = LearningObjective.create(name: 'Leerdoel 3 bij Design & Experience', user_id: 1, competency_id: 1)

activity1 = Activity.create(description: 'Activiteit 1 bij leerdoel 1', learning_objective_id: 1)
activity2 = Activity.create(description: 'Activiteit 2 bij leerdoel 1', learning_objective_id: 1)
activity3 = Activity.create(description: 'Activiteit 3 bij leerdoel 1', learning_objective_id: 1)

context1 = Context.create(description: 'Context 1 bij bij activiteit 1', activity_id: 1)
context2 = Context.create(description: 'Context 1 bij bij activiteit 2', activity_id: 2)
context3 = Context.create(description: 'Context 1 bij bij activiteit 3', activity_id: 3)

proof1 = Proof.create(description: 'Bewijs 1 bij activiteit 1', activity_id: 1)
proof2 = Proof.create(description: 'Bewijs 2 bij activiteit 1', activity_id: 1)
proof3 = Proof.create(description: 'Bewijs 3 bij activiteit 1', activity_id: 1)
