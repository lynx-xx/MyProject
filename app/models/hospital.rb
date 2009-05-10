class Hospital < ActiveRecord::Base
  has_many :facilities

 #ensure certain fields are populated
 validates_presence_of :full_name, :phone, :address, :image
  
 #check that image and email are in correct formats
 validates_format_of :image,
                            :with => %r{\.(gif|jpg|jpeg|png)$}i,
                            :message => "file specified must be either gif, png, jpg or jpeg",
                            :allow_blank => true
  
 validates_format_of :email,
                            :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/,
                            :message => "address specified is invalid",
                            :allow_blank => true

 #ensure that certain fields remain unique to the entry in the db
 validates_uniqueness_of :full_name, :short_name,
                            :allow_blank => true
end