class ClinicalService < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :clinical_service_type

  #ensure hospital_id & clinical_service_type_id fields are populated
  validates_presence_of :hospital_id,:clinical_service_type_id
  #ensure the combination of the hospital_id & clinical_service_type_id fields remains unique
  validates_uniqueness_of :hospital_id,
                        :scope => :clinical_service_type_id,
                        :message => "This Clinical Service has already been assigned to the hospital"
end
