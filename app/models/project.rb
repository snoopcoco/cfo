class Project < ActiveRecord::Base
  has_many :works
  
  validates :pj_name , length: { maximum: 20 } , presence: true
  validates :pj_detail , length: { maximum: 30 }  
end