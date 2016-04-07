$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'active_model'
require 'uc_student_number'
require 'uc_student_number_validator'

class TestModel
  include ActiveModel::Validations

  def initialize(attributes = {})
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end
end
