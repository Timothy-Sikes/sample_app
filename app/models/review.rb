class Review < ActiveRecord::Base
  attr_accessible :content, :course_id, :rating, :user_id
end
