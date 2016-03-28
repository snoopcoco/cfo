class Project < ActiveRecord::Base
<<<<<<< HEAD
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks

=======
  has_many :works
  
>>>>>>> login
  validates :pj_name , length: { maximum: 20 } , presence: true
  validates :pj_detail , length: { maximum: 30 }  
end