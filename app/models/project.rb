class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks

  validates :pj_name , length: { maximum: 20 } , presence: true
  validates :pj_detail , length: { maximum: 30 }  
end