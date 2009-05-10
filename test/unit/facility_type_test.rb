require 'test_helper'

class FacilityTypeTest < ActiveSupport::TestCase
  def test_invalid_with_empty_attributes
    facility_type = FacilityType.new
    # An empty Facility Type model should be invalid
    assert !facility_type.valid?
    # The name field should have validation errors
    assert facility_type.errors.invalid?(:name)
  end
end
