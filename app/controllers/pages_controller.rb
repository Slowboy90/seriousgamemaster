# pages controller
class PagesController < ApplicationController
  def root
    if user_signed_in?
    # check user type
    usertype = current_user.usertype
    case usertype
    when 1
      redirect_to student_root_path
    when 2
      redirect_to student_root_path
    # when 3
    #   redirect
    end
    else
      redirect_to new_user_session_path
    end
  end
end
  # def check_student
  #   redirect_to root_path unless current_user.user_type == 1
  #   # TODO: Flash message not authorized to view this page
  # end

  # def check_teacher
  #   redirect_to root_path unless current_user.user_type == 2
  # end

  # def check_admin
  #   redirect_to root_path unless current_user.user_type == 3
  # end