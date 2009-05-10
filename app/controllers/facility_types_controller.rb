class FacilityTypesController < ApplicationController
  # GET /facility_types
  # GET /facility_types.xml
  def index
    @facility_types = FacilityType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facility_types }
    end
  end
end
