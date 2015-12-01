# user class
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # relations
  has_many :feedbacks
  has_many :student_feedbacks, class_name: Feedback, foreign_key: :student_id
  has_many :learning_objectives
end
