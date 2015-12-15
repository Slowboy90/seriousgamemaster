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
        redirect_to teacher_root_path
      when 3
        redirect_to admin_root_path
      end
    else
      redirect_to new_user_session_path
    end
  end
end
