class VisitingHour < ActiveRecord::Base
  belongs_to :hospital

  #ensure hospital_id, days & hours fields are populated
  validates_presence_of :hospital_id,:days, :hours
  
end
