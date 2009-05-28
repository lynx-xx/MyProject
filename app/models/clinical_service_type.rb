class ClinicalServiceType < ActiveRecord::Base
  has_many :clinical_services

  #ensure name field is populated
  validates_presence_of :name
  #ensure name field remains unique to the entry in the db
  validates_uniqueness_of :name
end
