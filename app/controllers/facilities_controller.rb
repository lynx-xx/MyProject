class FacilitiesController < ApplicationController
  # GET /facilities
  # GET /facilities.xml
  def index
    @facilities = Facility.all
    @hospitals = Hospital.all #Is there a better way? Should I do this?
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facilities }
    end
  end

  def new
  end

  def edit
  end

  def show
  end

end
