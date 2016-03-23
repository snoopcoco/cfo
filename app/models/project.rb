class Project < ActiveRecord::Base
  validates :pj_name , length: { maximum: 20 } , presence: true
  validates :pj_detail , length: { maximum: 30 }
  
end