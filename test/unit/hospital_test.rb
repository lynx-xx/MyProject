require 'test_helper'

class HospitalTest < ActiveSupport::TestCase
  def test_invalid_with_empty_attributes
    hospital = Hospital.new
    # An empty Hospital model should be invalid
    assert !hospital.valid?
    # The full name field should have validation errors
    assert hospital.errors.invalid?(:full_name)
    # The phone field should have validation errors
    assert hospital.errors.invalid?(:phone)
    # The address field should have validation errors
    assert hospital.errors.invalid?(:address)
    # The image field should have validation errors
    assert hospital.errors.invalid?(:image)
  end
end
