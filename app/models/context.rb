# context model class
class Context < ActiveRecord::Base
  has_one :activity
end
