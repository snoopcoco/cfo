class Work < ActiveRecord::Base
  belongs_to :project
  
  validates :wkname, presence: true
end
