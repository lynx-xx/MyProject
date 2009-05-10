class Facility < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :facility_type

  #ensure hospital_id & facility_type_id fields are populated
  validates_presence_of :hospital_id,:facility_type_id
  #ensure the combination of the hospital_id & facility_type_id fields remains unique
  validates_uniqueness_of :hospital_id,
                        :scope => :facility_type_id,
                        :message => "This facility has already been assigned to the hospital"
end
