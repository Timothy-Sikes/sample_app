class Review < ActiveRecord::Base
  attr_accessible :content, :course_id, :rating, :user_id
  
  belongs_to :user
  belongs_to :course
  
  validates :rating, presence: true :inclusion => { :in => 0..5 }
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end
