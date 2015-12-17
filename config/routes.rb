# Student constraint
class StudentConstraint
  def matches?(request)
    u = User.find(request.session['warden.user.user.key'][0])
    u[0].usertype == 1 || 2 || 3
  end
end

# Teacher constraint
class TeacherConstraint
  def matches?(request)
    u = User.find(request.session['warden.user.user.key'][0])
    u[0].usertype == 2 || 1 || 3
  end
end

# Admin constraint
class AdminConstraint
  def matches?(request)
    u = User.find(request.session['warden.user.user.key'][0])
    u[0].usertype == 3 || 2 || 1
  end
end

Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    namespace :student, constraints: StudentConstraint.new do
      root 'dashboard#index'
      resources :competencies do
        resources :learning_objectives do
          resources :activities
        end
      end
    end

    namespace :teacher, constraints: TeacherConstraint.new do
      root 'dashboard#index'
    end

    namespace :admin, constraints: AdminConstraint.new do
      root 'dashboard#index'
      resources :competencies
      resources :user
    end
  end

  root 'pages#root'
  get 'home/index'
end
